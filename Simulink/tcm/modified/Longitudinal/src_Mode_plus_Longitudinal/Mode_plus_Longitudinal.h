/* C code generated by lustrec
   SVN version number f4186ce28f099e0bee6446f3bbdf13aac909e5f8
   Code is C99 compliant */
   
#ifndef _MODE_PLUS_LONGITUDINAL
#define _MODE_PLUS_LONGITUDINAL

/* Imports standard library */
#include "/usr/local/include/lustrec/arrow.h"


/* Types definitions */

/* Global constant (declarations, definitions are in C file) */

/* Struct declarations */
struct Mode_plus_Longitudinal_mem {struct MODE_LOGIC_mem *ni_1; struct LONGITUDINAL_CONTROLLER_mem *ni_0; };
struct MODE_LOGIC_mem {struct MODE_LOGIC_AltAndFPAMode_mem *ni_4; struct MODE_LOGIC_SpeedMode_mem *ni_3; struct MODE_LOGIC_HeadingMode_mem *ni_2; };
struct LONGITUDINAL_CONTROLLER_mem {struct LONGITUDINAL_CONTROLLER_AltitudeControl_mem *ni_7; struct LONGITUDINAL_CONTROLLER_FPAControl_mem *ni_6; struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_mem *ni_5; };
struct MODE_LOGIC_SpeedMode_mem {struct MODE_LOGIC_SpeedMode_reg {_Bool __MODE_LOGIC_SpeedMode_6; _Bool __MODE_LOGIC_SpeedMode_7; double __MODE_LOGIC_SpeedMode_8; } _reg; struct _arrow_mem *ni_8; };
struct MODE_LOGIC_HeadingMode_mem {struct MODE_LOGIC_HeadingMode_reg {
                                   _Bool __MODE_LOGIC_HeadingMode_3; _Bool __MODE_LOGIC_HeadingMode_4; } _reg; struct _arrow_mem *ni_9; };
struct MODE_LOGIC_AltAndFPAMode_mem {struct MODE_LOGIC_AltAndFPAMode_reg {
                                     _Bool __MODE_LOGIC_AltAndFPAMode_4; _Bool __MODE_LOGIC_AltAndFPAMode_5; _Bool __MODE_LOGIC_AltAndFPAMode_6; _Bool __MODE_LOGIC_AltAndFPAMode_7; } _reg; struct _arrow_mem *ni_10; };
struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_mem {struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_mem *ni_11; };
struct LONGITUDINAL_CONTROLLER_FPAControl_mem {struct LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_mem *ni_12; };
struct LONGITUDINAL_CONTROLLER_AltitudeControl_mem {struct LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_mem *ni_13; };
struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_mem {struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_reg {
                                                                double __LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_2; } _reg; struct _arrow_mem *ni_14; };
struct LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_mem {struct LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_reg {
                                                                double __LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_5; double __LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_6; _Bool __LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_7; } _reg; struct _arrow_mem *ni_15; };
struct LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_mem {
struct LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_reg {
double __LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_5; double __LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_6; _Bool __LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_7; } _reg; struct _arrow_mem *ni_16; };

/* Nodes declarations */
#define Mode_plus_Longitudinal_DECLARE(attr, inst)\
  attr struct Mode_plus_Longitudinal_mem inst;\
  MODE_LOGIC_DECLARE(attr, inst ## _ni_1);\
  LONGITUDINAL_CONTROLLER_DECLARE(attr, inst ## _ni_0);
  
#define Mode_plus_Longitudinal_LINK(inst) do {\
  MODE_LOGIC_LINK(inst ## _ni_1);\
  inst.ni_1 = &inst ## _ni_1;\
  LONGITUDINAL_CONTROLLER_LINK(inst ## _ni_0);\
  inst.ni_0 = &inst ## _ni_0;\
} while (0)

#define Mode_plus_Longitudinal_ALLOC(attr,inst)\
  Mode_plus_Longitudinal_DECLARE(attr,inst);\
  Mode_plus_Longitudinal_LINK(inst);


extern void Mode_plus_Longitudinal_reset (struct Mode_plus_Longitudinal_mem *self);

extern void Mode_plus_Longitudinal_step (double HeadMode_1_1,
                                         double ailStick_1_1,
                                         double ElevStick_1_1,
                                         double AltMode_1_1,
                                         double FPAMode_1_1,
                                         double ATMode_1_1,
                                         double AltCmd_1_1,
                                         double Altitude_1_1, double CAS_1_1,
                                         double CASCmdMCP_1_1,
                                         double thetadegf_1_1,
                                         double qbdegf_1_1,
                                         double GS_ktsf_1_1,
                                         double hdot_fpsf_1_1,
                                         double tas_ktsf_1_1,
                                         double gamINS_degf_1_1,
                                         double FPACmd_1_1, 
                                         _Bool (*HeadEng_1_1),
                                         _Bool (*ATEng_2_1),
                                         double (*CASCmd_3_1),
                                         double (*ElevCmd_4_1),
                                         struct Mode_plus_Longitudinal_mem *self);

#define MODE_LOGIC_DECLARE(attr, inst)\
  attr struct MODE_LOGIC_mem inst;\
  MODE_LOGIC_AltAndFPAMode_DECLARE(attr, inst ## _ni_4);\
  MODE_LOGIC_SpeedMode_DECLARE(attr, inst ## _ni_3);\
  MODE_LOGIC_HeadingMode_DECLARE(attr, inst ## _ni_2);
  
#define MODE_LOGIC_LINK(inst) do {\
  MODE_LOGIC_AltAndFPAMode_LINK(inst ## _ni_4);\
  inst.ni_4 = &inst ## _ni_4;\
  MODE_LOGIC_SpeedMode_LINK(inst ## _ni_3);\
  inst.ni_3 = &inst ## _ni_3;\
  MODE_LOGIC_HeadingMode_LINK(inst ## _ni_2);\
  inst.ni_2 = &inst ## _ni_2;\
} while (0)

#define MODE_LOGIC_ALLOC(attr,inst)\
  MODE_LOGIC_DECLARE(attr,inst);\
  MODE_LOGIC_LINK(inst);


extern void MODE_LOGIC_reset (struct MODE_LOGIC_mem *self);

extern void MODE_LOGIC_step (double HeadMode_1_1, double ailStick_1_1,
                             double elevStick_1_1, double AltMode_1_1,
                             double FPAMode_1_1, double ATMode_1_1,
                             double AltCmd_1_1, double Altitude_1_1,
                             double CAS_1_1, double CASCmdMCP_1_1, 
                             _Bool (*HeadEng_1_1), _Bool (*AltEng_2_1),
                             _Bool (*FPAEng_3_1), _Bool (*ATEng_4_1),
                             double (*CASCmd_5_1),
                             struct MODE_LOGIC_mem *self);

#define LONGITUDINAL_CONTROLLER_DECLARE(attr, inst)\
  attr struct LONGITUDINAL_CONTROLLER_mem inst;\
  LONGITUDINAL_CONTROLLER_AltitudeControl_DECLARE(attr, inst ## _ni_7);\
  LONGITUDINAL_CONTROLLER_FPAControl_DECLARE(attr, inst ## _ni_6);\
  LONGITUDINAL_CONTROLLER_PitchInnerLoop_DECLARE(attr, inst ## _ni_5);
  
#define LONGITUDINAL_CONTROLLER_LINK(inst) do {\
  LONGITUDINAL_CONTROLLER_AltitudeControl_LINK(inst ## _ni_7);\
  inst.ni_7 = &inst ## _ni_7;\
  LONGITUDINAL_CONTROLLER_FPAControl_LINK(inst ## _ni_6);\
  inst.ni_6 = &inst ## _ni_6;\
  LONGITUDINAL_CONTROLLER_PitchInnerLoop_LINK(inst ## _ni_5);\
  inst.ni_5 = &inst ## _ni_5;\
} while (0)

#define LONGITUDINAL_CONTROLLER_ALLOC(attr,inst)\
  LONGITUDINAL_CONTROLLER_DECLARE(attr,inst);\
  LONGITUDINAL_CONTROLLER_LINK(inst);


extern void LONGITUDINAL_CONTROLLER_reset (struct LONGITUDINAL_CONTROLLER_mem *self);

extern void LONGITUDINAL_CONTROLLER_step (double FPACmd_1_1,
                                          _Bool AltEng_1_1, _Bool FpaEng_1_1,
                                          double AltCmd_1_1, double Alt_1_1,
                                          double thetaDeg_1_1,
                                          double qDeg_1_1, double GsKts_1_1,
                                          double hdot_1_1, double VT_1_1,
                                          double Gamma_1_1, double CAS_1_1,
                                          double ElevStick_1_1, 
                                          double (*ElevCmd_1_1),
                                          struct LONGITUDINAL_CONTROLLER_mem *self);

#define MODE_LOGIC_SpeedMode_DECLARE(attr, inst)\
  attr struct MODE_LOGIC_SpeedMode_mem inst;\
  _arrow_DECLARE(attr, inst ## _ni_8);
  
#define MODE_LOGIC_SpeedMode_LINK(inst) do {\
  _arrow_LINK(inst ## _ni_8);\
  inst.ni_8 = &inst ## _ni_8;\
} while (0)

#define MODE_LOGIC_SpeedMode_ALLOC(attr,inst)\
  MODE_LOGIC_SpeedMode_DECLARE(attr,inst);\
  MODE_LOGIC_SpeedMode_LINK(inst);


extern void MODE_LOGIC_SpeedMode_reset (struct MODE_LOGIC_SpeedMode_mem *self);

extern void MODE_LOGIC_SpeedMode_step (double Actiavte_1_1,
                                       double Deactivate_1_1,
                                       _Bool AltEng_1_1, double CAS_1_1,
                                       double CASCmdMCP_1_1, 
                                       _Bool (*ATEng_1_1),
                                       double (*CASCmd_2_1),
                                       struct MODE_LOGIC_SpeedMode_mem *self);

#define MODE_LOGIC_HeadingMode_DECLARE(attr, inst)\
  attr struct MODE_LOGIC_HeadingMode_mem inst;\
  _arrow_DECLARE(attr, inst ## _ni_9);
  
#define MODE_LOGIC_HeadingMode_LINK(inst) do {\
  _arrow_LINK(inst ## _ni_9);\
  inst.ni_9 = &inst ## _ni_9;\
} while (0)

#define MODE_LOGIC_HeadingMode_ALLOC(attr,inst)\
  MODE_LOGIC_HeadingMode_DECLARE(attr,inst);\
  MODE_LOGIC_HeadingMode_LINK(inst);


extern void MODE_LOGIC_HeadingMode_reset (struct MODE_LOGIC_HeadingMode_mem *self);

extern void MODE_LOGIC_HeadingMode_step (double Actiavte_1_1,
                                         _Bool Deactivate_1_1, 
                                         _Bool (*HeadEng_1_1),
                                         struct MODE_LOGIC_HeadingMode_mem *self);

#define MODE_LOGIC_AltAndFPAMode_DECLARE(attr, inst)\
  attr struct MODE_LOGIC_AltAndFPAMode_mem inst;\
  _arrow_DECLARE(attr, inst ## _ni_10);
  
#define MODE_LOGIC_AltAndFPAMode_LINK(inst) do {\
  _arrow_LINK(inst ## _ni_10);\
  inst.ni_10 = &inst ## _ni_10;\
} while (0)

#define MODE_LOGIC_AltAndFPAMode_ALLOC(attr,inst)\
  MODE_LOGIC_AltAndFPAMode_DECLARE(attr,inst);\
  MODE_LOGIC_AltAndFPAMode_LINK(inst);


extern void MODE_LOGIC_AltAndFPAMode_reset (struct MODE_LOGIC_AltAndFPAMode_mem *self);

extern void MODE_LOGIC_AltAndFPAMode_step (double ActiavteFPA_1_1,
                                           _Bool Deactivate_1_1,
                                           double Altitude_1_1,
                                           double AltCmd_1_1,
                                           double ActiavteAlt_1_1, 
                                           _Bool (*AltEng_1_1),
                                           _Bool (*FPAEng_2_1),
                                           struct MODE_LOGIC_AltAndFPAMode_mem *self);

#define LONGITUDINAL_CONTROLLER_PitchInnerLoop_DECLARE(attr, inst)\
  attr struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_mem inst;\
  LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_DECLARE(attr, inst ## _ni_11);
  
#define LONGITUDINAL_CONTROLLER_PitchInnerLoop_LINK(inst) do {\
  LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_LINK(inst ## _ni_11);\
  inst.ni_11 = &inst ## _ni_11;\
} while (0)

#define LONGITUDINAL_CONTROLLER_PitchInnerLoop_ALLOC(attr,inst)\
  LONGITUDINAL_CONTROLLER_PitchInnerLoop_DECLARE(attr,inst);\
  LONGITUDINAL_CONTROLLER_PitchInnerLoop_LINK(inst);


extern void LONGITUDINAL_CONTROLLER_PitchInnerLoop_reset (struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_mem *self);

extern void LONGITUDINAL_CONTROLLER_PitchInnerLoop_step (double PitchCmd_1_1,
                                                         double Pitch_1_1,
                                                         double qdeg_1_1,
                                                         double CAS_1_1, 
                                                         double (*ElevCmd_1_1),
                                                         struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_mem *self);

extern void LONGITUDINAL_CONTROLLER_ManualOverride_step (double Man_1_1,
                                                         double Auto_1_1, 
                                                         double (*Out_1_1)
                                                         );

#define LONGITUDINAL_CONTROLLER_FPAControl_DECLARE(attr, inst)\
  attr struct LONGITUDINAL_CONTROLLER_FPAControl_mem inst;\
  LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_DECLARE(attr, inst ## _ni_12);
  
#define LONGITUDINAL_CONTROLLER_FPAControl_LINK(inst) do {\
  LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_LINK(inst ## _ni_12);\
  inst.ni_12 = &inst ## _ni_12;\
} while (0)

#define LONGITUDINAL_CONTROLLER_FPAControl_ALLOC(attr,inst)\
  LONGITUDINAL_CONTROLLER_FPAControl_DECLARE(attr,inst);\
  LONGITUDINAL_CONTROLLER_FPAControl_LINK(inst);


extern void LONGITUDINAL_CONTROLLER_FPAControl_reset (struct LONGITUDINAL_CONTROLLER_FPAControl_mem *self);

extern void LONGITUDINAL_CONTROLLER_FPAControl_step (_Bool engage_1_1,
                                                     double gamcmd_1_1,
                                                     double gamma_1_1,
                                                     double thetadeg_1_1,
                                                     double VT_1_1, 
                                                     double (*PitchCmd_1_1),
                                                     struct LONGITUDINAL_CONTROLLER_FPAControl_mem *self);

extern void LONGITUDINAL_CONTROLLER_EngageORzero_step (_Bool Engage_1_1,
                                                       double In_1_1, 
                                                       double (*Out_1_1)
                                                       );

#define LONGITUDINAL_CONTROLLER_AltitudeControl_DECLARE(attr, inst)\
  attr struct LONGITUDINAL_CONTROLLER_AltitudeControl_mem inst;\
  LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_DECLARE(attr, inst ## _ni_13);
  
#define LONGITUDINAL_CONTROLLER_AltitudeControl_LINK(inst) do {\
  LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_LINK(inst ## _ni_13);\
  inst.ni_13 = &inst ## _ni_13;\
} while (0)

#define LONGITUDINAL_CONTROLLER_AltitudeControl_ALLOC(attr,inst)\
  LONGITUDINAL_CONTROLLER_AltitudeControl_DECLARE(attr,inst);\
  LONGITUDINAL_CONTROLLER_AltitudeControl_LINK(inst);


extern void LONGITUDINAL_CONTROLLER_AltitudeControl_reset (struct LONGITUDINAL_CONTROLLER_AltitudeControl_mem *self);

extern void LONGITUDINAL_CONTROLLER_AltitudeControl_step (_Bool engage_1_1,
                                                          double AltCmd_1_1,
                                                          double Altitude_1_1,
                                                          double gskts_1_1,
                                                          double hdot_1_1, 
                                                          double (*altgamcmd_1_1),
                                                          struct LONGITUDINAL_CONTROLLER_AltitudeControl_mem *self);

extern void LONGITUDINAL_CONTROLLER_PitchInnerLoop_lookup1d_step (double In1_1_1,
                                                                  
                                                                  double (*Out1_1_1)
                                                                  );

#define LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_DECLARE(attr, inst)\
  attr struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_mem inst;\
  _arrow_DECLARE(attr, inst ## _ni_14);
  
#define LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_LINK(inst) do {\
  _arrow_LINK(inst ## _ni_14);\
  inst.ni_14 = &inst ## _ni_14;\
} while (0)

#define LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_ALLOC(attr,inst)\
  LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_DECLARE(attr,inst);\
  LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_LINK(inst);


extern void LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_reset (
struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_mem *self);

extern void LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_step (
double u_1_1, 
double (*y_1_1),
struct LONGITUDINAL_CONTROLLER_PitchInnerLoop_TransferFunc_mem *self);

#define LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_DECLARE(attr, inst)\
  attr struct LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_mem inst;\
  _arrow_DECLARE(attr, inst ## _ni_15);
  
#define LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_LINK(inst) do {\
  _arrow_LINK(inst ## _ni_15);\
  inst.ni_15 = &inst ## _ni_15;\
} while (0)

#define LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_ALLOC(attr,inst)\
  LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_DECLARE(attr,inst);\
  LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_LINK(inst);


extern void LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_reset (
struct LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_mem *self);

extern void LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_step (
double f_lpar_x_rpar__1_1, _Bool reset_level_1_1, double x0_1_1, 
double (*F_lpar_x_rpar__1_1),
struct LONGITUDINAL_CONTROLLER_FPAControl_integrator_reset_mem *self);

extern void LONGITUDINAL_CONTROLLER_FPAControl_DynamicSaturation_step (
double up_1_1, double u_1_1, double lo_1_1, 
double (*y1_1_1)
);

#define LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_DECLARE(attr, inst)\
  attr struct LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_mem inst;\
  _arrow_DECLARE(attr, inst ## _ni_16);
  
#define LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_LINK(inst) do {\
  _arrow_LINK(inst ## _ni_16);\
  inst.ni_16 = &inst ## _ni_16;\
} while (0)

#define LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_ALLOC(attr,inst)\
  LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_DECLARE(attr,inst);\
  LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_LINK(inst);


extern void LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_reset (
struct LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_mem *self);

extern void LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_step (
double ratelim_1_1, double input_1_1, _Bool ICtrig_1_1, double IC_1_1, 
double (*output_1_1),
struct LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_mem *self);

extern void LONGITUDINAL_CONTROLLER_AltitudeControl_VariableLimitSaturation_step (
double up_lim_1_1, double SigIn_1_1, double Lo_lim_1_1, 
double (*Out1_1_1)
);

extern void LONGITUDINAL_CONTROLLER_AltitudeControl_Saturation1_step (
double SigIn_1_1, 
double (*Out1_1_1)
);

extern void LONGITUDINAL_CONTROLLER_PitchInnerLoop_lookup1d_interpolate1d_sharp_2_step (
double In1_1_1, double x1_1_1, double x2_1_1, double y1_1_1, double y2_1_1, 
double (*Out1_1_1)
);

extern void LONGITUDINAL_CONTROLLER_PitchInnerLoop_lookup1d_interpolate1d_sharp_1_step (
double In1_1_1, double x1_1_1, double x2_1_1, double y1_1_1, double y2_1_1, 
double (*Out1_1_1)
);

extern void LONGITUDINAL_CONTROLLER_PitchInnerLoop_lookup1d_interpolate1d_sharp_0_step (
double In1_1_1, double x1_1_1, double x2_1_1, double y1_1_1, double y2_1_1, 
double (*Out1_1_1)
);

extern void LONGITUDINAL_CONTROLLER_AltitudeControl_VariableRateLimit_VariableLimitSaturation_step (
double up_lim_1_1, double SigIn_1_1, double Lo_lim_1_1, 
double (*Out1_1_1)
);


#endif
