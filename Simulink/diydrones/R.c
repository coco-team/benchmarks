/*============================================================================*/
/* SFUNCTION NUMERICAL CONTROLLER                                             */
/*============================================================================*/
/* Authors: Paul BIZARD original algorithm from Bill PREMERLANI               */
/* Date   : February 2009                                                     */
/*============================================================================*/
/* INPUTS                                                                     */
/* ------                                                                     */
/* u0[0 1 2] Gyrometers p q r             rad/s                               */
/* u1[0 1 2] Accelerometers x y z         m/s^2                               */
/* u2[0]     GPS Khi course over ground   rad                                 */
/* u2[1]     GPS speed over ground        m/s                                 */
/* u2[2 3 4] GPS position                 m                                   */
/* u2[5]     GPS validity                 [0/1]                               */
/*============================================================================*/
/* OUTPUTS                                                                    */
/* -------                                                                    */
/* y0[0 1 2]             Euler angles                    rad                  */
/* y1[0 1 2 3 4 5 6 7 8] DCM                                                  */
/* y2[0]                 Estimated airspeed              m/s                  */
/* y3[0 1 2]             Estimated wind                  m/s                  */
/* y4[0]                 Estimated airspeed over ground  m/s                  */
/* y5[0 1 2]             Ground velocity                 m/s                  */
/* y6[0 1 2]             Position                        m                    */
/* y7[0 1 2]             Debug vector 1                                       */
/* y8[0 1 2]             Debug vector 2                                       */
/*============================================================================*/
/* DCM matrix estimation                                                      */
/* R marix = transformation from body frame to earth frame                    */
/*                                                                            */
/* 1st column is x body vector expressed in earth frame                       */
/* 2nd...        y                                                            */
/* 3rd...        z                                                            */
/*                                                                            */
/* 1st row is x earth vector expressed in body frame                          */
/* 2nd row    y                                                               */
/* 3rd row    z                                                               */
/*                                                                            */
/* x front                                                                    */
/* y right wing                                                               */
/* z down                                                                     */
/*============================================================================*/

#define S_FUNCTION_NAME       R
#define S_FUNCTION_LEVEL      2
#define NUM_INPUTS            3
#define INPUT_0_WIDTH         3
#define INPUT_1_WIDTH         3
#define INPUT_2_WIDTH         6
#define INPUT_0_FEEDTHROUGH   3
#define INPUT_1_FEEDTHROUGH   3
#define INPUT_2_FEEDTHROUGH   6
#define NUM_OUTPUTS           9
#define OUTPUT_0_WIDTH        3
#define OUTPUT_1_WIDTH        9
#define OUTPUT_2_WIDTH        1
#define OUTPUT_3_WIDTH        3
#define OUTPUT_4_WIDTH        1
#define OUTPUT_5_WIDTH        3
#define OUTPUT_6_WIDTH        3
#define OUTPUT_7_WIDTH        3
#define OUTPUT_8_WIDTH        3
#define NPARAMS               1
#define SAMPLE_TIME_0         0.025
#define SAMPLE_TIME_1         1.  
#define NUM_DISC_STATES       0
#define DISC_STATES_IC        [0]
#define NUM_CONT_STATES       0
#define CONT_STATES_IC        [0]
#define SFUNWIZ_GENERATE_TLC  1
#define SOURCEFILES           ""
#define PANELINDEX            5
#define SFUNWIZ_REVISION      1.0

#include "simstruc.h"

#include "conio.h"
#include "stdio.h"
#include "dos.h"
#include "math.h"
#include "stdlib.h"

/* General */
#define DT25                     0.025       // 25ms sample time
#define PI                       3.141592653 // Pi
#define R2D                      57.295779   // Radians to degrees
#define D2R                      0.0174533   // Degrees to radians
#define GRAVITY                  9.81        // ms-2

/* DCM */
#define KPPitchRoll              0.012	      // Pitch-Roll correction proportional gain
#define KIPitchRoll              0.00002     // Pitch-Roll correction integral gain
#define KPYaw                    0.3         // Yaw correction proportional gain
#define KIYaw                    0.0001      // Yaw correction integral gain

/* Wind estimation */
#define MINROTATION              0.2         // Minimum rotation between two samplings (rad)
#define WINDFILTER               1./16.      // filter constant

/* GPS reporting latency compensation */
#define GPS_DATA_MAX_AGE	      9

/* Dead reckoning */
#define DR_TAU                   2.5         // IMU time constant
#define DR_FILTER_GAIN           DT25/DR_TAU
#define ONE_OVER_TAU             1./DR_TAU
#define DR_PERIOD                44

/* 2nd RP error */
#define NEW_RP_ERROR	            0           // New algorithm for RP error
#define MAX_ACCEL_SAMPLES        45
#define ACCEL_SAMPLES_PER_SEC    40

#define P0(S) ssGetSFcnParam(S, 0)

#define MDL_CHECK_PARAMETERS
#if defined(MDL_CHECK_PARAMETERS) && defined(MATLAB_MEX_FILE)
/*----------------------------------------------------------------------------*/
static void mdlCheckParameters(SimStruct *S)
/*----------------------------------------------------------------------------*/
{
   unsigned short int  i;
   bool                validParam = false;


   /* All parameters must be scalar */
   for (i=0;i<ssGetSFcnParamsCount(S);i++)
   {
      const mxArray *pVal = ssGetSFcnParam(S,i);

      if (!mxIsNumeric(pVal) || !mxIsDouble(pVal) ||  mxIsLogical(pVal)
       ||  mxIsComplex(pVal) ||  mxIsSparse(pVal) 
       || !mxIsFinite(mxGetPr(pVal)[0]))
      {
         validParam = true;
         break;
      }
   }

   if (validParam) 
   {
      ssSetErrorStatus(S,"All parameters must be a scalar or vectors");     
      return;
   }

   /* All parameters are not tunable */
   for (i=0;i<ssGetSFcnParamsCount(S);i++)
   {
      ssSetSFcnParamTunable(S, i, 0);
   }
}
#endif

/*----------------------------------------------------------------------------*/
static void mdlInitializeSizes(SimStruct *S)
/*----------------------------------------------------------------------------*/
{
   /* Parameters */
   ssSetNumSFcnParams(S, NPARAMS);           /* Number of expected parameters */
   
#if defined(MATLAB_MEX_FILE)
   if (ssGetNumSFcnParams(S) == ssGetSFcnParamsCount(S))
   {
      mdlCheckParameters(S);
      if (ssGetErrorStatus(S) != NULL) return;
   }
   /* Parameter mismatch will be reported by Simulink */
   else  return;
#endif
    
   ssSetNumContStates(S, NUM_CONT_STATES);
   ssSetNumDiscStates(S, NUM_DISC_STATES);

   if (!ssSetNumInputPorts(S, NUM_INPUTS)) return;

   ssSetInputPortWidth(S, 0, INPUT_0_WIDTH);
   ssSetInputPortDirectFeedThrough(S, 0, INPUT_0_FEEDTHROUGH);
   ssSetInputPortRequiredContiguous(S, 0, 1);

   ssSetInputPortWidth(S, 1, INPUT_1_WIDTH);
   ssSetInputPortDirectFeedThrough(S, 1, INPUT_1_FEEDTHROUGH);
   ssSetInputPortRequiredContiguous(S, 1, 1);

   ssSetInputPortWidth(S, 2, INPUT_2_WIDTH);
   ssSetInputPortDirectFeedThrough(S, 2, INPUT_2_FEEDTHROUGH);
   ssSetInputPortRequiredContiguous(S, 2, 1);

   if (!ssSetNumOutputPorts(S, NUM_OUTPUTS)) return;
   ssSetOutputPortWidth(S, 0, OUTPUT_0_WIDTH);
   ssSetOutputPortWidth(S, 1, OUTPUT_1_WIDTH);
   ssSetOutputPortWidth(S, 2, OUTPUT_2_WIDTH);
   ssSetOutputPortWidth(S, 3, OUTPUT_3_WIDTH);
   ssSetOutputPortWidth(S, 4, OUTPUT_4_WIDTH);
   ssSetOutputPortWidth(S, 5, OUTPUT_5_WIDTH);
   ssSetOutputPortWidth(S, 6, OUTPUT_6_WIDTH);
   ssSetOutputPortWidth(S, 7, OUTPUT_7_WIDTH);
   ssSetOutputPortWidth(S, 8, OUTPUT_8_WIDTH);

   ssSetNumSampleTimes(S, 2);
   ssSetNumRWork(S, 0);
   ssSetNumIWork(S, 0);
   ssSetNumPWork(S, 60);
   ssSetNumModes(S, 0);
   ssSetNumNonsampledZCs(S, 0);

   /* Take care when specifying exception free code - see sfuntmpl_doc.c */
   ssSetOptions(S, SS_OPTION_EXCEPTION_FREE_CODE
                 | SS_OPTION_DISCRETE_VALUED_OUTPUT);
}

/*----------------------------------------------------------------------------*/
static void mdlInitializeSampleTimes(SimStruct *S)
/*----------------------------------------------------------------------------*/
{
   ssSetSampleTime(S, 0, SAMPLE_TIME_0);
   ssSetOffsetTime(S, 0, 0.0);
   ssSetSampleTime(S, 1, SAMPLE_TIME_1);
   ssSetOffsetTime(S, 1, 0.0);
}

#define MDL_START
#if defined(MDL_START)
/*----------------------------------------------------------------------------*/
static void mdlStart(SimStruct *S)
/*----------------------------------------------------------------------------*/
{
   /* Declarations */
   /* ============ */
   /* DCM */
   float  *rmat;
   float  *rup;
   float  *errorRP;
   float  *omegacorrPAcc;
   float  *omegacorrInt;
   float  *gyroIntegrator;
   float  *dirovergndHRmat;
   float  *dirovergndHGPS;
   float  *errorYawground;
   float  *errorYawplane;
   float  *omegacorrPGPS;
   int    *dcm_flags_yaw_req;

   /* Wind */
   float  *groundVelocity;
   float  *groundVelocityHistory;
   float  *fuselageDirection;
   float  *fuselageDirectionHistory;
   float  *estimatedWind;

   /* GPS reporting latency compensation */
   float  *last_alt;
   float  *climb_rate_previous;
   float  *cog_previous;
   float  *sog_previous;
   float  *location_previous;
   float  *velocity_previous;
   float  *air_speed_3DGPS;
   float  *forward_acceleration;
   float  *GPSvelocity;
   float  *ground_velocity_magnitudeXY;
   float  *air_speed_magnitudeXY;
   float  *GPSlocation;
   int    *dcm_flags_gps_history_valid;
   int    *gps_data_age;

   /* Dead reckoning */
   float  *IMUintegralAcceleration;
   float  *IMUlocation;
   int    *dead_reckon_clock;
   float  *velocityErrorEarth;
   float  *locationErrorEarth;
   float  *IMUvelocity;
   int    *dcm_flags_reckon_req;
   float  *air_speed_3DIMU;
   
   /* 2nd RP error */
   float  *accelerometer_earth_integral;
   int    *accelerometer_samples;
   int    *dcm_flags_rollpitch_req;
   float  *GPS_velocity_previous;

   /* Debug */
   float  *debug1;
   float  *debug2;

   
   /* Allocate memory to arrays */
   /* ========================= */
   /* DCM */
   rmat                         = (float *) calloc(9, sizeof(float));
   rup                          = (float *) calloc(9, sizeof(float));
   errorRP                      = (float *) calloc(3, sizeof(float));
   omegacorrPAcc                = (float *) calloc(3, sizeof(float));
   omegacorrInt                 = (float *) calloc(3, sizeof(float));
   gyroIntegrator               = (float *) calloc(3, sizeof(float));
   dirovergndHRmat              = (float *) calloc(3, sizeof(float));
   dirovergndHGPS               = (float *) calloc(3, sizeof(float));
   errorYawground               = (float *) calloc(3, sizeof(float));
   errorYawplane                = (float *) calloc(3, sizeof(float));
   omegacorrPGPS                = (float *) calloc(3, sizeof(float));
   dcm_flags_yaw_req            = (int *)   calloc(1, sizeof(int));

   /* Wind */
   groundVelocity               = (float *) calloc(3, sizeof(float));
   groundVelocityHistory        = (float *) calloc(3, sizeof(float));
   fuselageDirection            = (float *) calloc(3, sizeof(float));
   fuselageDirectionHistory     = (float *) calloc(3, sizeof(float));
   estimatedWind                = (float *) calloc(3, sizeof(float));

   /* GPS reporting latency compensation */
   last_alt                     = (float *) calloc(1, sizeof(float));
   climb_rate_previous          = (float *) calloc(1, sizeof(float));
   cog_previous                 = (float *) calloc(1, sizeof(float));
   sog_previous                 = (float *) calloc(1, sizeof(float));
   location_previous            = (float *) calloc(3, sizeof(float));
   velocity_previous            = (float *) calloc(1, sizeof(float));
   air_speed_3DGPS              = (float *) calloc(1, sizeof(float));
   forward_acceleration         = (float *) calloc(1, sizeof(float));
   GPSvelocity                  = (float *) calloc(3, sizeof(float));
   ground_velocity_magnitudeXY  = (float *) calloc(1, sizeof(float));
   air_speed_magnitudeXY        = (float *) calloc(1, sizeof(float));
   GPSlocation                  = (float *) calloc(3, sizeof(float));
   dcm_flags_gps_history_valid  = (int *)   calloc(1, sizeof(int));
   gps_data_age                 = (int *)   calloc(1, sizeof(int));

   /* Dead reckoning */
   IMUintegralAcceleration      = (float *) calloc(3, sizeof(float));
   IMUlocation                  = (float *) calloc(3, sizeof(float));
   dead_reckon_clock            = (int *)   calloc(1, sizeof(int));
   velocityErrorEarth           = (float *) calloc(3, sizeof(float));
   locationErrorEarth           = (float *) calloc(3, sizeof(float));
   IMUvelocity                  = (float *) calloc(3, sizeof(float));
   dcm_flags_reckon_req         = (int *)   calloc(1, sizeof(int));
   air_speed_3DIMU              = (float *) calloc(1, sizeof(float));

   /* 2nd RP error */
   accelerometer_earth_integral = (float *) calloc(3, sizeof(float));
   accelerometer_samples        = (int *)   calloc(1, sizeof(int));
   dcm_flags_rollpitch_req      = (int *)   calloc(1, sizeof(int));
   GPS_velocity_previous        = (float *) calloc(3, sizeof(float));

   /* Debug */
   debug1                       = (float *) calloc(3, sizeof(float));
   debug2                       = (float *) calloc(3, sizeof(float));

   
   /* Attach pointers as user data */
   /* ============================ */
   /* DCM */
   ssGetPWork(S)[0]  = rmat;
   ssGetPWork(S)[1]  = rup;
   ssGetPWork(S)[2]  = errorRP;
   ssGetPWork(S)[3]  = omegacorrPAcc;
   ssGetPWork(S)[4]  = omegacorrInt;
   ssGetPWork(S)[5]  = gyroIntegrator;
   ssGetPWork(S)[6]  = dirovergndHRmat;
   ssGetPWork(S)[7]  = dirovergndHGPS;
   ssGetPWork(S)[8]  = errorYawground;
   ssGetPWork(S)[9]  = errorYawplane;
   ssGetPWork(S)[10] = omegacorrPGPS;
   ssGetPWork(S)[11] = dcm_flags_yaw_req;

   /* Wind */
   ssGetPWork(S)[17] = groundVelocity;
   ssGetPWork(S)[18] = groundVelocityHistory;
   ssGetPWork(S)[19] = fuselageDirection;
   ssGetPWork(S)[20] = fuselageDirectionHistory;
   ssGetPWork(S)[21] = estimatedWind;

   /* GPS reporting latency compensation */
   ssGetPWork(S)[24] = last_alt;
   ssGetPWork(S)[25] = climb_rate_previous;
   ssGetPWork(S)[26] = cog_previous;
   ssGetPWork(S)[27] = sog_previous;
   ssGetPWork(S)[28] = location_previous;
   ssGetPWork(S)[29] = velocity_previous;
   ssGetPWork(S)[30] = air_speed_3DGPS;
   ssGetPWork(S)[31] = forward_acceleration;
   ssGetPWork(S)[32] = GPSvelocity;
   ssGetPWork(S)[33] = ground_velocity_magnitudeXY;
   ssGetPWork(S)[34] = air_speed_magnitudeXY;
   ssGetPWork(S)[35] = GPSlocation;
   ssGetPWork(S)[36] = dcm_flags_gps_history_valid;
   ssGetPWork(S)[37] = gps_data_age;

   /* Dead reckoning */
   ssGetPWork(S)[38] = IMUintegralAcceleration;
   ssGetPWork(S)[39] = IMUlocation;
   ssGetPWork(S)[40] = dead_reckon_clock;
   ssGetPWork(S)[41] = velocityErrorEarth;
   ssGetPWork(S)[42] = locationErrorEarth;
   ssGetPWork(S)[43] = IMUvelocity;
   ssGetPWork(S)[44] = dcm_flags_reckon_req;
   ssGetPWork(S)[45] = air_speed_3DIMU;

   /* 2nd RP error */
   ssGetPWork(S)[46] = accelerometer_earth_integral;
   ssGetPWork(S)[47] = accelerometer_samples;
   ssGetPWork(S)[48] = dcm_flags_rollpitch_req;
   ssGetPWork(S)[49] = GPS_velocity_previous;

   /* Debug */
   ssGetPWork(S)[50] = debug1;
   ssGetPWork(S)[51] = debug2;
}
#endif

#define MDL_INITIALIZE_CONDITIONS
#if defined(MDL_INITIALIZE_CONDITIONS)
/*----------------------------------------------------------------------------*/
static void mdlInitializeConditions(SimStruct *S)
/*----------------------------------------------------------------------------*/
{
   /* Declarations */
   /* ============ */
   /* DCM */
   float  *rmat                         = ssGetPWork(S)[0];
   float  *rup                          = ssGetPWork(S)[1];
   float  *gyroIntegrator               = ssGetPWork(S)[5];
   int    *dcm_flags_yaw_req            = ssGetPWork(S)[11];

   float  Yaw, Pitch, Roll;
   int    i;

   /* Wind */
   float  *groundVelocityHistory        = ssGetPWork(S)[18];
   float  *fuselageDirectionHistory     = ssGetPWork(S)[20];
   float  *estimatedWind                = ssGetPWork(S)[21];

   /* GPS reporting latency compensation */
   float  *last_alt                     = ssGetPWork(S)[24];
   float  *climb_rate_previous          = ssGetPWork(S)[25];
   float  *cog_previous                 = ssGetPWork(S)[26];
   float  *sog_previous                 = ssGetPWork(S)[27];
   float  *location_previous            = ssGetPWork(S)[28];
   float  *velocity_previous            = ssGetPWork(S)[29];
   float  *air_speed_3DGPS              = ssGetPWork(S)[30];
   float  *forward_acceleration         = ssGetPWork(S)[31];
   float  *ground_velocity_magnitudeXY  = ssGetPWork(S)[33];
   float  *air_speed_magnitudeXY        = ssGetPWork(S)[34];
   int    *dcm_flags_gps_history_valid  = ssGetPWork(S)[36];
   int    *gps_data_age                 = ssGetPWork(S)[37];

   /* Dead reckoning */
   float  *IMUintegralAcceleration      = ssGetPWork(S)[38];
   float  *IMUlocation                  = ssGetPWork(S)[39];
   float  *IMUvelocity                  = ssGetPWork(S)[43];
   int    *dead_reckon_clock            = ssGetPWork(S)[40];
   int    *dcm_flags_reckon_req         = ssGetPWork(S)[44];
   float  *air_speed_3DIMU              = ssGetPWork(S)[45];

   /* 2nd RP error */
   float  *accelerometer_earth_integral = ssGetPWork(S)[46];
   int    *accelerometer_samples        = ssGetPWork(S)[47];
   int    *dcm_flags_rollpitch_req      = ssGetPWork(S)[48];
   float  *GPS_velocity_previous        = ssGetPWork(S)[49];


   /* DCM */
   /* === */
   /* Initial Euler angles */
   Yaw   = 0. * D2R;
   Pitch = 0. * D2R;
   Roll  = 0. * D2R;

   /* Initialize DCM */
   rmat[0] =  cos(Yaw)*cos(Pitch);
   rmat[1] = -sin(Yaw)*cos(Roll) + cos(Yaw)*sin(Pitch)*sin(Roll);
   rmat[2] =  sin(Yaw)*sin(Roll) + cos(Yaw)*sin(Pitch)*cos(Roll);
   rmat[3] =  sin(Yaw)*cos(Pitch);
   rmat[4] =  cos(Yaw)*cos(Roll) + sin(Yaw)*sin(Pitch)*sin(Roll);
   rmat[5] = -cos(Yaw)*sin(Roll) + sin(Yaw)*sin(Pitch)*cos(Roll);
   rmat[6] = -sin(Pitch);
   rmat[7] =  cos(Pitch)*sin(Roll);
   rmat[8] =  cos(Pitch)*cos(Roll);

   /* Update matrix rup = identity */
   for (i=0;i<9;i++) rup[i] = 0.;
   rup[0] = rup[4] = rup[8] = 1.;

   /* Integrator state */
   for (i=0;i<3;i++) gyroIntegrator[i] = 0.;

   /* Yaw flag */
   dcm_flags_yaw_req[0] = 0;

   
   /* Wind */
   /* ==== */
   /* History */
   for (i=0;i<3;i++) groundVelocityHistory[i] = 0.;
   for (i=0;i<3;i++) fuselageDirectionHistory[i] = 0.;

   /* Estimated wind */
   for (i=0;i<3;i++) estimatedWind[i] = 0.;


   /* GPS reporting latency compensation */
   /* ================================== */
   /* History */
   last_alt[0] = 0.;
   climb_rate_previous[0] = 0.;
   cog_previous[0] = 0.;
   sog_previous[0] = 0.;
   for (i=0;i<3;i++) location_previous[i] = 0.;
   velocity_previous[0] = 0.;

   /* GPS history valid flag */
   dcm_flags_gps_history_valid[0] = 2;

   /* GPS data age */
   gps_data_age[0] = 0;

   /* Speed and forward acceleration because computed first at 1s but used from 25ms on */
   ground_velocity_magnitudeXY[0] = 10.;
   air_speed_3DGPS[0] = 10.;
   forward_acceleration[0] = 0.;
   air_speed_magnitudeXY[0] = 10.;

   
   /* Dead reckoning */
   /* ============== */
   /* Acceleration integrator */
   IMUintegralAcceleration[0] = 10.; for (i=1;i<3;i++) IMUintegralAcceleration[i] = 0.;
   /* IMU location (altitude = 75m at initialization) */
   for (i=0;i<2;i++) IMUlocation[i] = 0.; IMUlocation[2] = -75.;
   /* IMU velocity (speed = 10m/s at initialization) */
   IMUvelocity[0] = 10.; for (i=1;i<3;i++) IMUvelocity[i] = 0.;
   /* Clock */
   dead_reckon_clock[0] = 0;
   /* Reckoning flag */
   dcm_flags_reckon_req[0] = 0;
   /* Airspeed magnitude */
   air_speed_3DIMU[0] = 10.;

   
   /* 2nd RP error */
   /* ============ */
   /* Accelerometer integrator */
   for (i=0;i<3;i++) accelerometer_earth_integral[i] = 0.;
   accelerometer_samples[0] = 0;
   
   /* Roll pitch correction flag */
   dcm_flags_rollpitch_req[0] = 0;

   /* GPS velocity memory */
   GPS_velocity_previous[0] = 9.; for (i=1;i<3;i++) GPS_velocity_previous[i] = 0.;
}
#endif

#define MDL_OUTPUTS
#if defined(MDL_OUTPUTS)
/*----------------------------------------------------------------------------*/
static void mdlOutputs(SimStruct *S, int_T tid)
/*----------------------------------------------------------------------------*/
{
   /* Declarations */
   /* ============ */
   /* Parameters */
   float  DEADRECKONING                 = (const real_T) mxGetPr(P0(S))[2];

   /* Output */
   real_T *y0                           = ssGetOutputPortRealSignal(S,0);
   real_T *y1                           = ssGetOutputPortRealSignal(S,1);
   real_T *y2                           = ssGetOutputPortRealSignal(S,2);
   real_T *y3                           = ssGetOutputPortRealSignal(S,3);
   real_T *y4                           = ssGetOutputPortRealSignal(S,4);
   real_T *y5                           = ssGetOutputPortRealSignal(S,5);
   real_T *y6                           = ssGetOutputPortRealSignal(S,6);
   real_T *y7                           = ssGetOutputPortRealSignal(S,7);
   real_T *y8                           = ssGetOutputPortRealSignal(S,8);

   /* DCM */
   float  *rmat                         = ssGetPWork(S)[0];
   float  Yaw, Pitch, Roll;

   /* Wind */
   float  *estimatedWind                = ssGetPWork(S)[21];

   /* GPS reporting latency compensation */
   float  *air_speed_3DGPS              = ssGetPWork(S)[30];
   float  *GPSvelocity                  = ssGetPWork(S)[32];
   float  *air_speed_magnitudeXY        = ssGetPWork(S)[34];
   float  *GPSlocation                  = ssGetPWork(S)[35];

   /* Dead reckoning */
   float  *IMUlocation                  = ssGetPWork(S)[39];
   float  *IMUvelocity                  = ssGetPWork(S)[43];

   /* Debug */
   float  *debug1                       = ssGetPWork(S)[50];
   float  *debug2                       = ssGetPWork(S)[51];

   /* Misellenaous */
   int    i;


   /* Euler angles from DCM */
   /* ===================== */
   /* atan2(rmat31,rmat11) */
   Yaw = atan2(rmat[3],rmat[0]);

   /* -asin(rmat31) */
   Pitch = -asin(rmat[6]);   

   /* atan2(rmat32,rmat33) */
   Roll = atan2(rmat[7],rmat[8]);


   /* Outputs */
   /* ======= */
   /* Euler angles */
   y0[0] = Roll; y0[1] = Pitch; y0[2] = Yaw; 

   /* DCM */
   for (i=0;i<9;i++) y1[i] = rmat[i];

   /* Estimated airspeed */
   y2[0] = air_speed_3DGPS[0];

   /* Estimated wind */
   for (i=0;i<3;i++) y3[i] = estimatedWind[i];

   /* Airspeed magnitude over ground */
   y4[0] = air_speed_magnitudeXY[0];
   
   /* Speed and location */
   if (DEADRECKONING == 0)
   {
      for (i=0;i<3;i++) {y5[i] = GPSlocation[i]; y6[i] = GPSvelocity[i];}
   }
   else
   {
      for (i=0;i<3;i++) {y5[i] = IMUlocation[i]; y6[i] = IMUvelocity[i];}
   }

   /* Debug */
   for (i=0;i<3;i++) y7[i] = debug1[i];
   for (i=0;i<3;i++) y8[i] = debug2[i];
}
#endif

#define MDL_UPDATE
#if defined(MDL_UPDATE)
/*----------------------------------------------------------------------------*/
static void mdlUpdate(SimStruct *S, int_T tid)
/*----------------------------------------------------------------------------*/
{
   /* Declarations */
   /* ============ */
   /* Parameters */
   float  GPS_SPEED_MIN                 = (const real_T) mxGetPr(P0(S))[0];
   float  WIND_NAV_AIR_SPEED_MIN        = (const real_T) mxGetPr(P0(S))[1];
   float  DEADRECKONING                 = (const real_T) mxGetPr(P0(S))[2];

   /* Inputs */
   real_T *u0                           = (const real_T *) ssGetInputPortSignal(S,0);
   real_T *u1                           = (const real_T *) ssGetInputPortSignal(S,1);
   real_T *u2                           = (const real_T *) ssGetInputPortSignal(S,2);

   /* DCM */
   float  *rmat                         = ssGetPWork(S)[0];
   float  *rup                          = ssGetPWork(S)[1];
   float  *errorRP                      = ssGetPWork(S)[2];
   float  *omegacorrPAcc                = ssGetPWork(S)[3];
   float  *omegacorrInt                 = ssGetPWork(S)[4];
   float  *gyroIntegrator               = ssGetPWork(S)[5];
   float  *dirovergndHRmat              = ssGetPWork(S)[6];
   float  *dirovergndHGPS               = ssGetPWork(S)[7];
   float  *errorYawground               = ssGetPWork(S)[8];
   float  *errorYawplane                = ssGetPWork(S)[9];
   float  *omegacorrPGPS                = ssGetPWork(S)[10];
   int    *dcm_flags_yaw_req            = ssGetPWork(S)[11];

   float  omegatotal[3], theta[3];
   float  accelBody[3];
   float  V_buff[3];
   float  r_buff[9];
   float  f_buff;
   float  pqr[3];
   float  thetaSquare, nonlinearAdjust;

   /* Wind */
   float  *groundVelocity               = ssGetPWork(S)[17];
   float  *groundVelocityHistory        = ssGetPWork(S)[18];
   float  *fuselageDirection            = ssGetPWork(S)[19];
   float  *fuselageDirectionHistory     = ssGetPWork(S)[20];
   float  *estimatedWind                = ssGetPWork(S)[21];

   float  groundVelocitySum[3], groundVelocityDiff[3];
   float  fuselageDirectionSum[3], fuselageDirectionDiff[3];
   float  angleVelocityDiff, angleDirectionDiff, thetaDiff;
   float  costhetaDiff, sinthetaDiff;
   float  magVelocityDiff, magDirectionDiff;
   float  estimatedAirspeed;
   
   /* GPS reporting latency compensation */
   float  *last_alt                     = ssGetPWork(S)[24];
   float  *climb_rate_previous          = ssGetPWork(S)[25];
   float  *cog_previous                 = ssGetPWork(S)[26];
   float  *sog_previous                 = ssGetPWork(S)[27];
   float  *location_previous            = ssGetPWork(S)[28];
   float  *velocity_previous            = ssGetPWork(S)[29];
   float  *air_speed_3DGPS              = ssGetPWork(S)[30];
   float  *forward_acceleration         = ssGetPWork(S)[31];
   float  *GPSvelocity                  = ssGetPWork(S)[32];
   float  *ground_velocity_magnitudeXY  = ssGetPWork(S)[33];
   float  *air_speed_magnitudeXY        = ssGetPWork(S)[34];
   float  *GPSlocation                  = ssGetPWork(S)[35];
   int    *dcm_flags_gps_history_valid  = ssGetPWork(S)[36];
   int    *gps_data_age                 = ssGetPWork(S)[37];

   float  location_deltaXY[2], location_deltaZ, actual_dir; 
   float  cog_delta, sog_delta, climb_rate_delta, climb_gps;
   float  velocity_thru_air[3], calculated_heading;
   
   /* Dead reckoning */
   float  *IMUintegralAcceleration      = ssGetPWork(S)[38];
   float  *IMUlocation                  = ssGetPWork(S)[39];
   int    *dead_reckon_clock            = ssGetPWork(S)[40];
   float  *velocityErrorEarth           = ssGetPWork(S)[41];
   float  *locationErrorEarth           = ssGetPWork(S)[42];
   float  *IMUvelocity                  = ssGetPWork(S)[43];
   int    *dcm_flags_reckon_req         = ssGetPWork(S)[44];
   float  *air_speed_3DIMU              = ssGetPWork(S)[45];

   float  accelEarth[3], acceleration[3], air_speed[3]; 

   /* 2nd RP error */
   float  *accelerometer_earth_integral = ssGetPWork(S)[46];
   int    *accelerometer_samples        = ssGetPWork(S)[47];
   int    *dcm_flags_rollpitch_req      = ssGetPWork(S)[48];
   float  *GPS_velocity_previous        = ssGetPWork(S)[49];

   float accelerometer_earth[3], GPS_acceleration[3];
   float accelerometer_reference[3], errorRP_earth[3];

   /* Debug */
   float  *debug1                       = ssGetPWork(S)[50];
   float  *debug2                       = ssGetPWork(S)[51];

   /* Miscellaneous */
   int    i;
   FILE*  deb_file_ptr;

/*-DEBUG-FILE-----------------------------------------------------------------*/
   /* Open debug file */
//   deb_file_ptr = fopen ("deb_file.txt", "a");

//   fprintf( deb_file_ptr, "WIND_NAV_AIR_SPEED_MIN = %9.6f\n", WIND_NAV_AIR_SPEED_MIN );
//   fprintf( deb_file_ptr, "dead_reckon_clock[0] = %d\n", dead_reckon_clock[0] );
//   for (i=0;i<3;i++) fprintf( deb_file_ptr, "%9.6f ", groundVelocity[i] );
//   fprintf( deb_file_ptr, "\n" );	  

/*-DEBUG----------------------------------------------------------------------*/

/*============================================================================*/
/*============================================================================*/
/*                                25ms routine                                */
/*============================================================================*/
/*============================================================================*/

   /* If 25ms sample time */
   if (ssIsSampleHit(S,0,tid))
   {
      /*======================================================================*/
      /*                            Dead Reckoning                            */
      /*======================================================================*/
      /* Read body acceleration (x y z accelerometers) */
      for (i=0;i<3;i++) accelBody[i] = u1[i];

		/*	Express the accelerometer vector in the earth frame */
      MatrixVector(rmat, accelBody, accelEarth);
      for (i=0;i<3;i++) acceleration[i] = -accelEarth[i];
      acceleration[2] += GRAVITY;
      
		/*	Integrate the accelerometers to update the estimated velocity */
      for (i=0;i<3;i++) IMUintegralAcceleration[i] += acceleration[i] * DT25;

		/*	Integrate the estimated velocity to update the estimated position */
      for (i=0;i<3;i++) IMUlocation[i] += IMUintegralAcceleration[i] * DT25;

      /* If maximum correction time after last GPS update is not elapsed */
      if (dead_reckon_clock[0] > 0)
      {
         dead_reckon_clock[0] -- ;

         for (i=0;i<3;i++) IMUintegralAcceleration[i] += velocityErrorEarth[i] * DR_FILTER_GAIN;
         for (i=0;i<3;i++) IMUlocation[i] += locationErrorEarth[i] * DR_FILTER_GAIN;
         for (i=0;i<3;i++) IMUvelocity[i] = IMUintegralAcceleration[i] + locationErrorEarth[i] * ONE_OVER_TAU;
      }
      else
      {
         for (i=0;i<3;i++) IMUvelocity[i] = IMUintegralAcceleration[i];         
      }

      /* If dead reckoning possible because GPS data is valid and has been corrected for its latency */
      if (dcm_flags_reckon_req[0] == 1)
      {
         /* Reset reckoning flag */
         dcm_flags_reckon_req[0] = 0;

         /* Set dead reckoning clock */
         dead_reckon_clock[0] = DR_PERIOD;
         
         /* Compute position and velocity errors */
         for (i=0;i<3;i++) locationErrorEarth[i] = GPSlocation[i] - IMUlocation[i];         
         for (i=0;i<3;i++) velocityErrorEarth[i] = GPSvelocity[i] - IMUintegralAcceleration[i];         
      }

      /* Compute airspeed vector (for the OSD) */
      for (i=0;i<3;i++) air_speed[i] = IMUvelocity[i] - estimatedWind[i];
      VectorDotProduct(air_speed, air_speed, &f_buff);
      air_speed_3DIMU[0] = sqrt(f_buff);


      /*======================================================================*/
      /*                                  DCM                                 */
      /*======================================================================*/
      /* R matrix update */
      /* =============== */
      /* Read body angular velocity (p q r gyrometers) */
      for (i=0;i<3;i++) omegatotal[i] = u0[i];

      /* Add pitch-roll and yaw corrections */
      VectorAdd (omegatotal, omegacorrPAcc, omegatotal);
      VectorAdd (omegatotal, omegacorrPGPS, omegatotal);
      VectorAdd (omegatotal, omegacorrInt,  omegatotal);

      /* Integrate angular velocity over the 25ms time step */
      for (i=0;i<3;i++) theta[i] = omegatotal[i] * DT25;

      /* Non linear adjustment */
      thetaSquare = theta[0]*theta[0] + theta[1]*theta[1] + theta[2]*theta[2];
      nonlinearAdjust = 1. + thetaSquare/3.;
      for (i=0;i<3;i++) theta[i] *= nonlinearAdjust;
      
      /* Assemble equivalent small rotation matrix (update matrix) */
      rup[1] = -theta[2];
      rup[2] =  theta[1];
      rup[3] =  theta[2];
      rup[5] = -theta[0];
      rup[6] = -theta[1];
      rup[7] =  theta[0];

      /* Rotate body frame */
      MatrixMultiply (rmat, rup);


      /* Orthogonalization */
      /* ================= */
      /* (U,V) */
      VectorDotProduct(&rmat[0], &rmat[3], &f_buff);
      f_buff /= 2.;

      /* U = U - 0.5*V(U,V) */
      for (i=0;i<3;i++) V_buff[i] = rmat[i];
      for (i=0;i<3;i++) rmat[i]  -= rmat[3+i]*f_buff;

      /* V = V - 0.5*U(U,V) */
      for (i=0;i<3;i++) rmat[3+i] -= V_buff[i]*f_buff;

      /* W = UxV */
      VectorCross(&rmat[0], &rmat[3], &rmat[6]);

      /* U scaling */
      VectorDotProduct(&rmat[0], &rmat[0], &f_buff);
      f_buff = 1./sqrt(f_buff);
      for (i=0;i<3;i++) rmat[i] = rmat[i]*f_buff;

      /* V scaling */
      VectorDotProduct(&rmat[3], &rmat[3], &f_buff);
      f_buff = 1./sqrt(f_buff);
      for (i=0;i<3;i++) rmat[3+i] = rmat[3+i]*f_buff;

      /* W scaling */
      VectorDotProduct(&rmat[6], &rmat[6], &f_buff);
      f_buff = 1./sqrt(f_buff);
      for (i=0;i<3;i++) rmat[6+i] = rmat[6+i]*f_buff;


      /* Roll-Pitch correction */
      /* ===================== */
      /* If old way to compute RP error */
      if (NEW_RP_ERROR == 0)
      {
         /* Add estimated gyro biases to gyros */
         for (i=0;i<3;i++) pqr[i] = u0[i] + omegacorrInt[i];

         /* Correct body acceleration for centrifugal effect */
         V_buff[0] = accelBody[0] + forward_acceleration[0];      
         V_buff[1] = accelBody[1] + pqr[2]*air_speed_3DGPS[0];      
         V_buff[2] = accelBody[2] - pqr[1]*air_speed_3DGPS[0];
      
         /* Compute the roll-pitch error vector: cross product of measured */
         /* earth Z vector with estimated earth vector expressed in body   */
         /* frame (3rd row of rmat)                                        */
         VectorCross(V_buff, &rmat[6], errorRP);
      }
      
      /* Else if new way to compute RP error */
      else
      {
         /*	Integrate the accelerometer signals in earth frame of reference */
         for (i=0;i<3;i++) accelerometer_earth_integral[i] += accelEarth[i];
         accelerometer_samples[0]++;

         /* If there is GPS information available, or if GPS is offline and there are enough samples, compute the roll-pitch correction */
	      if ((dcm_flags_rollpitch_req[0] == 1) || (accelerometer_samples[0] > MAX_ACCEL_SAMPLES))
         {
            /* Compute the average of the integral */
            for (i=0;i<3;i++) accelerometer_earth[i] = accelerometer_earth_integral[i] / accelerometer_samples[0];

            /* If there is GPS information available */
            if (dcm_flags_rollpitch_req[0] == 1)
            {
               /* Acceleration_reference = gravity_earth - 40* delta_GPS_velocity/samples */
               for (i=0;i<3;i++) GPS_acceleration[i] = ((GPSvelocity[i] - GPS_velocity_previous[i]) * ((float)(ACCEL_SAMPLES_PER_SEC))) / ((float)(accelerometer_samples[0]));
               for (i=0;i<3;i++) GPS_acceleration[i] = GPSvelocity[i] - GPS_velocity_previous[i];
               for (i=0;i<3;i++) GPS_velocity_previous[i] = GPSvelocity[i];
               for (i=0;i<3;i++) accelerometer_reference[i] = - GPS_acceleration[i];
               accelerometer_reference[2] += GRAVITY;

               /* Normalise the acceleration reference */
               VectorDotProduct(accelerometer_reference, accelerometer_reference, &f_buff);
               f_buff = 1./sqrt(f_buff);
               for (i=0;i<3;i++) accelerometer_reference[i] = accelerometer_reference[i]*f_buff;
            }
            else
            {
               // Cannot do acceleration compensation, assume no acceleration 
               for (i=0;i<2;i++) accelerometer_reference[i] = 0.;
               accelerometer_reference[2] = 1.;
            }

            /*	Compute the RP error vector in the earth frame */
            VectorCross(accelerometer_earth, accelerometer_reference, errorRP_earth);
            errorRP_earth[2] = 0. ;

            /* Express the RP error vector in the body frame */
            TransposeMatrix(rmat, r_buff);
            MatrixVector(r_buff, errorRP_earth, errorRP);

            /* Reset integration process */
            for (i=0;i<3;i++) accelerometer_earth_integral[i] = 0.;
            accelerometer_samples[0] = 0;
            dcm_flags_rollpitch_req[0] = 0;
         }
      }

      /* Compute pitch-roll correction proportional term */
      for (i=0;i<3;i++) omegacorrPAcc[i] = errorRP[i] * KPPitchRoll;

      /* Add pitch-roll error to integrator */
      for (i=0;i<3;i++) gyroIntegrator[i] += errorRP[i] * KIPitchRoll;


      /* Yaw correction part 2 */
      /* ===================== */
      /* If direction over ground has been updated */
      if (dcm_flags_yaw_req[0] == 1)
      {
         /* If minimum of ground velocity */
         if ( ground_velocity_magnitudeXY[0] > GPS_SPEED_MIN )
         {
            /* Compute the yaw error vector expressed in earth frame */
            VectorCross(dirovergndHRmat, dirovergndHGPS, errorYawground);

            /* Express the yaw error vector in the body frame */
            TransposeMatrix(rmat, r_buff);
            MatrixVector(r_buff, errorYawground, errorYawplane);
         }
         else
         {
            errorYawplane[0] = errorYawplane[1] = errorYawplane[2] = 0.;
         }

         /* Compute yaw correction proportional term */
         for (i=0;i<3;i++) omegacorrPGPS[i] = errorYawplane[i] * KPYaw;

         /* Reset yaw correction flag */
         dcm_flags_yaw_req[0] = 0;
      }

      /* Add yaw error to integrator */
      for (i=0;i<3;i++) gyroIntegrator[i] += errorYawplane[i] * KIYaw;
      
      /* Compute integral term */
      for (i=0;i<3;i++) omegacorrInt[i] = gyroIntegrator[i];
   }

/*============================================================================*/
/*============================================================================*/
/*                                1s routine                                  */
/*============================================================================*/
/*============================================================================*/

   /* If 1s sample time */
   if (ssIsSampleHit(S,1,tid))
   {
      /* Filtered x body over ground (projection of x body on earth xy plane) */
      dirovergndHRmat[0] = rmat[0];
      dirovergndHRmat[1] = rmat[3];
      dirovergndHRmat[2] = 0.;

      /* If GPS data is valid */
      if ( u2[5] == 1 )
      {
         /*======================================================================*/
         /*                 GPS reporting latency compensation                   */
         /*======================================================================*/
   for (i=0;i<3;i++) debug1[i] = 0.;
   for (i=0;i<3;i++) debug2[i] = 0.;
                
         /* Reset GPS data age */
         gps_data_age[0] = 0;

         /* Climb rate */
         climb_gps = u2[4] - last_alt[0];
         last_alt[0] = u2[4];

         /* If GPS history is valid */
         if ( dcm_flags_gps_history_valid[0] == 0 )
         {
            cog_delta        = u2[0] - cog_previous[0];
            sog_delta        = u2[1] - sog_previous[0];
            climb_rate_delta = climb_gps - climb_rate_previous[0];
   
            location_deltaXY[0] = u2[2] - location_previous[0];
            location_deltaXY[1] = u2[3] - location_previous[1];
            location_deltaZ     = u2[4] - location_previous[2];
         }
         else
         {
            cog_delta = sog_delta = climb_rate_delta = 0.;
            location_deltaXY[0] = location_deltaXY[1] = location_deltaZ = 0.;
            dcm_flags_gps_history_valid[0] -= 1;
         }
   
         /* Correct course over ground */
         actual_dir = u2[0] + cog_delta;
         if      (actual_dir >  PI) actual_dir -= 2.*PI;
         else if (actual_dir < -PI) actual_dir += 2.*PI;
         cog_previous[0] = u2[0];
   
         /* Correct speed over ground magnitude */
         ground_velocity_magnitudeXY[0] = u2[1] + sog_delta;
         sog_previous[0] = u2[1];
   
         /* Correct ground speed vector */
         GPSvelocity[2] = climb_gps + climb_rate_delta;
         climb_rate_previous[0] = climb_gps;
         if ( dcm_flags_gps_history_valid[0] == 1 ) GPSvelocity[2] = 0.;
   
         GPSvelocity[0] = cos(actual_dir) * ground_velocity_magnitudeXY[0];
         GPSvelocity[1] = sin(actual_dir) * ground_velocity_magnitudeXY[0];
   
         /* Correct position vector */
         f_buff              = cos(cog_delta) * location_deltaXY[0] - sin(cog_delta) * location_deltaXY[1];
         location_deltaXY[1] = sin(cog_delta) * location_deltaXY[0] + cos(cog_delta) * location_deltaXY[1];
         location_deltaXY[0] = f_buff;
   
         GPSlocation[0] = u2[2] + location_deltaXY[0];
         GPSlocation[1] = u2[3] + location_deltaXY[1];
         GPSlocation[2] = u2[4] + location_deltaZ;
   
         location_previous[0] = u2[2] ;
         location_previous[1] = u2[3] ;
         location_previous[2] = u2[4] ;
   
         /* Compute airspeed vector */
         velocity_thru_air[0] = GPSvelocity[0] - estimatedWind[0];
         velocity_thru_air[1] = GPSvelocity[1] - estimatedWind[1];
         velocity_thru_air[2] = GPSvelocity[2] - estimatedWind[2];
   
         /* Compute GPS airspeed magnitude */
         VectorDotProduct(velocity_thru_air, velocity_thru_air, &f_buff);
         air_speed_3DGPS[0] = sqrt(f_buff);
   
         /* Compute fuselage heading (yaw) */
         calculated_heading = atan2(velocity_thru_air[1], velocity_thru_air[0]);
   
         /* Compute airspeed over ground magnitude */
         air_speed_magnitudeXY[0] = sqrt(velocity_thru_air[0]*velocity_thru_air[0]
                                       + velocity_thru_air[1]*velocity_thru_air[1]);
   
         /* Compute forward acceleration for centrifugal compensation */
         forward_acceleration[0] = air_speed_3DGPS[0] - velocity_previous[0];
         velocity_previous[0] = air_speed_3DGPS[0];
         
         /*======================================================================*/
         /*                            Estimated Wind                            */
         /*======================================================================*/
         /* Ground speed S */
         for (i=0;i<3;i++) groundVelocity[i] = GPSvelocity[i];
   
         /* Fuselage direction F */
         for (i=0;i<3;i++) fuselageDirection[i] = rmat[3*i];
   
         /* 0.5*(S1+S2) */
         for (i=0;i<3;i++)
         groundVelocitySum[i] = 0.5*( groundVelocity[i] + groundVelocityHistory[i] );
   
         /* 0.5*(S1-S2) */
         for (i=0;i<3;i++)
         groundVelocityDiff[i] = 0.5*( groundVelocity[i] - groundVelocityHistory[i] );
   
         /* 0.5*(F1+F2) */
         for (i=0;i<3;i++)
         fuselageDirectionSum[i] = 0.5*( fuselageDirection[i] + fuselageDirectionHistory[i] );
   
         /* 0.5*(F1-F2) */
         for (i=0;i<3;i++)
         fuselageDirectionDiff[i] = 0.5*( fuselageDirection[i] - fuselageDirectionHistory[i] );
   
         /* Angles */
         angleVelocityDiff  = atan2(groundVelocityDiff[1], groundVelocityDiff[0]);
         angleDirectionDiff = atan2(fuselageDirectionDiff[1], fuselageDirectionDiff[0]);
         thetaDiff          = angleVelocityDiff - angleDirectionDiff;
         costhetaDiff       = cos(thetaDiff);
         sinthetaDiff       = sin(thetaDiff);
   
         /* Magnitudes */
         VectorDotProduct(groundVelocityDiff, groundVelocityDiff, &f_buff);
         magVelocityDiff = sqrt(f_buff);
         VectorDotProduct(fuselageDirectionDiff, fuselageDirectionDiff, &f_buff);
         magDirectionDiff = sqrt(f_buff);
   
         /* If good rotation */
         if ( magDirectionDiff > MINROTATION )
         {
            estimatedAirspeed = magVelocityDiff / magDirectionDiff;

            f_buff = costhetaDiff * fuselageDirectionSum[0] - sinthetaDiff * fuselageDirectionSum[1];
            estimatedWind[0] = (1. - WINDFILTER) * estimatedWind[0] 
                              + WINDFILTER * ( groundVelocitySum[0] - estimatedAirspeed * f_buff );
   
            f_buff = sinthetaDiff * fuselageDirectionSum[0] + costhetaDiff * fuselageDirectionSum[1];
            estimatedWind[1] = (1. - WINDFILTER) * estimatedWind[1] 
                              + WINDFILTER * ( groundVelocitySum[1] - estimatedAirspeed * f_buff );
   
            estimatedWind[2] = (1. - WINDFILTER) * estimatedWind[2] 
                              + WINDFILTER * ( groundVelocitySum[2] - estimatedAirspeed * fuselageDirectionSum[2] );

                              /* History */
            for (i=0;i<3;i++) fuselageDirectionHistory[i] = fuselageDirection[i];
            for (i=0;i<3;i++) groundVelocityHistory[i] = groundVelocity[i];
         }
   
   
         /*======================================================================*/
         /*                                  DCM                                 */
         /*======================================================================*/
         /* Estimated yaw drift */
         /* =================== */
         /* Normalized GPS speed over ground vector */
         if ((estimatedWind[0] == 0. && estimatedWind[1] == 0.)
          || (air_speed_magnitudeXY[0] < WIND_NAV_AIR_SPEED_MIN))
         {
            dirovergndHGPS[0] = cos(actual_dir);
            dirovergndHGPS[1] = sin(actual_dir);
            dirovergndHGPS[2] = 0.;
         }
         else
         {
            dirovergndHGPS[0] = cos(calculated_heading);
            dirovergndHGPS[1] = sin(calculated_heading);
            dirovergndHGPS[2] = 0.;
         }
   
         /* Dead reckoning possible */
         dcm_flags_reckon_req[0] = 1;

         /* Roll Pitch acceleration compensation possible */
         dcm_flags_rollpitch_req[0] = 1;
      }

      /* Else GPS data is not valid */
      else
      {
         /* Ensure navigation will not try to use the GPS data */
         gps_data_age[0] = GPS_DATA_MAX_AGE + 1;
         
         /* Normalized GPS speed over ground vector */
         dirovergndHGPS[0] = dirovergndHRmat[0];
         dirovergndHGPS[1] = dirovergndHRmat[1];
         dirovergndHGPS[2] = 0.;

         /* No dead reckoning */
         dcm_flags_reckon_req[0] = 0;

         /* Roll Pitch acceleration compensation not possible */
         dcm_flags_rollpitch_req[0] = 0;

         /* GPS history has to be restarted */
         dcm_flags_gps_history_valid[0] = 2;
      }

      /* Request yaw drift correction */
      dcm_flags_yaw_req[0] = 1;
   }
/*----------------------------------------------------------------------------*/
   /* Close debug file */
//   fclose (deb_file_ptr);
/*----------------------------------------------------------------------------*/
} 
#endif

/*----------------------------------------------------------------------------*/
static void MatrixMultiply(float *M1, float *M2)
/*----------------------------------------------------------------------------*/
/* M1 = M1*M2                                                                 */
/*----------------------------------------------------------------------------*/
{
   /* Declarations */
   float  M_buff[9];
   int    i;


   for (i=0;i<9;i++) M_buff[i] = M1[i];

   M1[0] = M_buff[0]*M2[0] + M_buff[1]*M2[3] + M_buff[2]*M2[6];    
   M1[3] = M_buff[3]*M2[0] + M_buff[4]*M2[3] + M_buff[5]*M2[6];    
   M1[6] = M_buff[6]*M2[0] + M_buff[7]*M2[3] + M_buff[8]*M2[6];    

   M1[1] = M_buff[0]*M2[1] + M_buff[1]*M2[4] + M_buff[2]*M2[7];    
   M1[4] = M_buff[3]*M2[1] + M_buff[4]*M2[4] + M_buff[5]*M2[7];    
   M1[7] = M_buff[6]*M2[1] + M_buff[7]*M2[4] + M_buff[8]*M2[7];    

   M1[2] = M_buff[0]*M2[2] + M_buff[1]*M2[5] + M_buff[2]*M2[8];    
   M1[5] = M_buff[3]*M2[2] + M_buff[4]*M2[5] + M_buff[5]*M2[8];    
   M1[8] = M_buff[6]*M2[2] + M_buff[7]*M2[5] + M_buff[8]*M2[8];    
}

/*----------------------------------------------------------------------------*/
static void TransposeMatrix(float *M1, float *M2)
/*----------------------------------------------------------------------------*-/
/* M2 = Transpose M1                                                          */
/*----------------------------------------------------------------------------*/
{
   M2[0] = M1[0]; M2[1] = M1[3]; M2[2] = M1[6];
   M2[3] = M1[1]; M2[4] = M1[4]; M2[5] = M1[7];
   M2[6] = M1[2]; M2[7] = M1[5]; M2[8] = M1[8];
}

/*----------------------------------------------------------------------------*/
static void MatrixVector(float *M, float *V1, float *V2)
/*----------------------------------------------------------------------------*/
/* V2 = M*V1                                                                  */
/*----------------------------------------------------------------------------*/
{
   V2[0] = M[0]*V1[0] + M[1]*V1[1] + M[2]*V1[2];
   V2[1] = M[3]*V1[0] + M[4]*V1[1] + M[5]*V1[2];
   V2[2] = M[6]*V1[0] + M[7]*V1[1] + M[8]*V1[2];
}


/*----------------------------------------------------------------------------*/
static void VectorDotProduct(float *V1, float *V2, float *Scalar_Product)
/*----------------------------------------------------------------------------*/
/* Scalar_Product = V1.V2                                                     */
/*----------------------------------------------------------------------------*/
{
   /* Declarations */
   int    i;


   *Scalar_Product = 0.;
   for (i=0;i<3;i++) *Scalar_Product += V1[i]*V2[i];
}

/*----------------------------------------------------------------------------*/
static void VectorCross(float *V1, float *V2, float *V3)
/*----------------------------------------------------------------------------*/
/* V3 = V1xV2                                                                 */
/*----------------------------------------------------------------------------*/
{
   V3[0] = V1[1]*V2[2] - V1[2]*V2[1];
   V3[1] = V1[2]*V2[0] - V1[0]*V2[2];
   V3[2] = V1[0]*V2[1] - V1[1]*V2[0];
}

/*----------------------------------------------------------------------------*/
static void VectorAdd(float *V1, float *V2, float *V3)
/*----------------------------------------------------------------------------*/
/* V3 = V1+V2                                                                 */
/*----------------------------------------------------------------------------*/
{
   /* Declarations */
   int    i;


   for (i=0;i<3;i++) V3[i] = V1[i]+V2[i];
}

/*----------------------------------------------------------------------------*/
static void VectorScale(float *V1, float *K, float *V2)
/*----------------------------------------------------------------------------*/
/* V2 = K*V1                                                                 */
/*----------------------------------------------------------------------------*/
{
   /* Declarations */
   int    i;


   for (i=0;i<3;i++) V2[i] = V1[i] * (*K);
}
#undef MDL_DERIVATIVES
#if defined(MDL_DERIVATIVES)
/*----------------------------------------------------------------------------*/
static void mdlDerivatives(SimStruct *S)
/*----------------------------------------------------------------------------*/
{
}
#endif

#if defined(MATLAB_MEX_FILE) || defined(NRT)
#undef MDL_ZERO_CROSSINGS
  #if defined(MDL_DERIVATIVES)
/*----------------------------------------------------------------------------*/
static void mdlZeroCrossings(SimStruct *S)
/*----------------------------------------------------------------------------*/
{
}
  #endif
#endif

/*----------------------------------------------------------------------------*/
static void mdlTerminate(SimStruct *S)
/*----------------------------------------------------------------------------*/
{
}

#ifdef  MATLAB_MEX_FILE    /* Is this file being compiled as a MEX-file? */
  #include "simulink.c"    /* MEX-file interface mechanism */
#else
  #include "cg_sfun.h"     /* Code generation registration function */
#endif
