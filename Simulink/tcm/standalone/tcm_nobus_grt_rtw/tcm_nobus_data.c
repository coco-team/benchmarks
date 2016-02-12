/*
 * tcm_nobus_data.c
 *
 * Code generation for model "tcm_nobus".
 *
 * Model version              : 1.28
 * Simulink Coder version : 8.8 (R2015a) 09-Feb-2015
 * C source code generated on : Fri Feb 12 14:15:31 2016
 *
 * Target selection: grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "tcm_nobus.h"
#include "tcm_nobus_private.h"

/* Block parameters (auto storage) */
P_tcm_nobus_T tcm_nobus_P = {
  {
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0
  },                                   /* Variable: ap
                                        * Referenced by:
                                        *   '<S1>/APAltCmd'
                                        *   '<S1>/APFPACmd '
                                        *   '<S1>/APHdgCmd'
                                        */

  {
    1.0
  },                                   /* Variable: bias
                                        * Referenced by:
                                        *   '<S2>/ICthrot'
                                        *   '<S2>/ICthrot1'
                                        */
  250.0,                               /* Expression: 250
                                        * Referenced by: '<S1>/CAScmd'
                                        */
  1.6878,                              /* Expression: 1.6878
                                        * Referenced by: '<S2>/kt2fps'
                                        */
  0.2,                                 /* Expression: 0.2
                                        * Referenced by: '<S2>/Kcas'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S2>/one'
                                        */
  0.6,                                 /* Expression: 0.6
                                        * Referenced by: '<S1>/Machcmd'
                                        */
  1.6878,                              /* Expression: 1.6878
                                        * Referenced by: '<S2>/kt2fps1'
                                        */
  0.11,                                /* Expression: 0.11
                                        * Referenced by: '<S2>/Ktas'
                                        */
  1.2,                                 /* Expression: 1.2
                                        * Referenced by: '<S2>/Kr1'
                                        */
  -1.0,                                /* Expression: -1.0
                                        * Referenced by: '<S14>/k'
                                        */
  0.08,                                /* Expression: 0.08
                                        * Referenced by: '<S19>/Kh'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S21>/m1'
                                        */

  /*  Expression: [0 120 350 500]
   * Referenced by: '<S5>/Kcas'
   */
  { 0.0, 120.0, 350.0, 500.0 },

  /*  Expression: [1.0 1.0 0.3 0.3]
   * Referenced by: '<S5>/Kcas'
   */
  { 1.0, 1.0, 0.3, 0.3 },
  1.4,                                 /* Expression: 1.4
                                        * Referenced by: '<S21>/Kgamerr'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S4>/k5'
                                        */
  2.0,                                 /* Expression: 2
                                        * Referenced by: '<S23>/Kpitch'
                                        */
  -0.0625,                             /* Computed Parameter: TransferFcn_A
                                        * Referenced by: '<S23>/Transfer Fcn'
                                        */
  -0.0625,                             /* Computed Parameter: TransferFcn_C
                                        * Referenced by: '<S23>/Transfer Fcn'
                                        */
  1.0,                                 /* Computed Parameter: TransferFcn_D
                                        * Referenced by: '<S23>/Transfer Fcn'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S23>/Kwo'
                                        */

  /*  Expression: [0 120 350 500]
   * Referenced by: '<S23>/Kcas'
   */
  { 0.0, 120.0, 350.0, 500.0 },

  /*  Expression: [1.0 1.0 0.3 0.3]
   * Referenced by: '<S23>/Kcas'
   */
  { 1.0, 1.0, 0.3, 0.3 },
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S20>/zero10'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S20>/zero9'
                                        */
  30.0,                                /* Expression: 30
                                        * Referenced by: '<S1>/rollLimit'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S11>/sgn'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S13>/Kphierr'
                                        */
  -0.5,                                /* Computed Parameter: rollrate_IL_A
                                        * Referenced by: '<S13>/rollrate_IL'
                                        */
  1.0,                                 /* Computed Parameter: rollrate_IL_B
                                        * Referenced by: '<S13>/rollrate_IL'
                                        */
  -0.003225,                           /* Computed Parameter: rollrate_IL_C
                                        * Referenced by: '<S13>/rollrate_IL'
                                        */
  0.00645,                             /* Computed Parameter: rollrate_IL_D
                                        * Referenced by: '<S13>/rollrate_IL'
                                        */

  /*  Expression: [0 120 350 500]
   * Referenced by: '<S13>/Kcas'
   */
  { 0.0, 120.0, 350.0, 500.0 },

  /*  Expression: [1.0 1.0 0.3 0.3]
   * Referenced by: '<S13>/Kcas'
   */
  { 1.0, 1.0, 0.3, 0.3 },
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S10>/zero10'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S10>/zero9'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S3>/Gain1'
                                        */
  1.25,                                /* Expression: 1.25
                                        * Referenced by: '<S5>/Kr'
                                        */
  -10.0,                               /* Computed Parameter: YD_wo_A
                                        * Referenced by: '<S5>/YD_wo'
                                        */
  -10.0,                               /* Computed Parameter: YD_wo_C
                                        * Referenced by: '<S5>/YD_wo'
                                        */
  1.0,                                 /* Computed Parameter: YD_wo_D
                                        * Referenced by: '<S5>/YD_wo'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S1>/YDEngage'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S28>/zero10'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S28>/zero9'
                                        */
  100.0,                               /* Expression: 100
                                        * Referenced by: '<S1>/maxthrot'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S1>/minthrot'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S6>/zero10'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S6>/zero9'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S2>/Gain'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S2>/RollComp1'
                                        */
  5.0,                                 /* Expression: 5
                                        * Referenced by: '<S2>/Gain1'
                                        */
  -0.0625,                             /* Computed Parameter: TransferFcn_A_b
                                        * Referenced by: '<S2>/Transfer Fcn'
                                        */
  -0.0625,                             /* Computed Parameter: TransferFcn_C_o
                                        * Referenced by: '<S2>/Transfer Fcn'
                                        */
  1.0,                                 /* Computed Parameter: TransferFcn_D_h
                                        * Referenced by: '<S2>/Transfer Fcn'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S1>/MachSel'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S2>/PHIMC1'
                                        */
  2.5,                                 /* Expression: 2.5
                                        * Referenced by: '<S2>/Kr'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S9>/Constant1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S9>/Constant2'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S9>/Constant3'
                                        */
  10.0,                                /* Expression: 10
                                        * Referenced by: '<S1>/Constant3'
                                        */
  3.2,                                 /* Expression: 3.2
                                        * Referenced by: '<S1>/Constant4'
                                        */
  1.6878,                              /* Expression: 1.6878
                                        * Referenced by: '<S14>/k2'
                                        */
  1000.0,                              /* Expression: 1000
                                        * Referenced by: '<S14>/Saturation'
                                        */
  0.0001,                              /* Expression: 0.0001
                                        * Referenced by: '<S14>/Saturation'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S14>/k3'
                                        */
  32.174,                              /* Expression: 32.174
                                        * Referenced by: '<S14>/k4'
                                        */
  57.295779513082323,                  /* Expression: 180/pi
                                        * Referenced by: '<S14>/k5'
                                        */
  -1.0,                                /* Expression: -1.0
                                        * Referenced by: '<S14>/k1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S14>/init'
                                        */
  0.05,                                /* Expression: 0.05
                                        * Referenced by: '<S11>/Khdg'
                                        */
  3.0,                                 /* Expression: 3
                                        * Referenced by: '<S11>/Khdgrte'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S11>/Khdg1'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S11>/Khdg2'
                                        */
  180.0,                               /* Expression: 180
                                        * Referenced by: '<S16>/Constant1'
                                        */
  2.0,                                 /* Expression: 2
                                        * Referenced by: '<S14>/k6'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S18>/Constant1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S18>/Constant2'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S18>/Constant3'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S15>/Constant1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S15>/Constant2'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S15>/Constant3'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S19>/k'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S19>/Constant1'
                                        */
  1.6878,                              /* Expression: 1.6878
                                        * Referenced by: '<S19>/kts2fps'
                                        */
  1000.0,                              /* Expression: 1000
                                        * Referenced by: '<S19>/Saturation'
                                        */
  0.0001,                              /* Expression: 0.0001
                                        * Referenced by: '<S19>/Saturation'
                                        */
  20.0,                                /* Expression: 20
                                        * Referenced by: '<S24>/Gain'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S24>/Gain1'
                                        */
  57.2958,                             /* Expression: 57.2958
                                        * Referenced by: '<S19>/r2d'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S4>/k2'
                                        */
  276.738714,                          /* Expression: 4.83*57.2958
                                        * Referenced by: '<S21>/hddLim'
                                        */
  1.6878,                              /* Expression: 1.6878
                                        * Referenced by: '<S21>/kt2fps'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S21>/KIgamerr'
                                        */
  1,                                   /* Expression: ap.FPAeng
                                        * Referenced by: '<S1>/APFPAEng'
                                        */
  1,                                   /* Expression: ap.alteng
                                        * Referenced by: '<S1>/APAltEng'
                                        */
  1,                                   /* Expression: ap.headeng
                                        * Referenced by: '<S1>/APHeadEng'
                                        */
  1                                    /* Expression: ap.throteng
                                        * Referenced by: '<S1>/APThrotEng'
                                        */
};
