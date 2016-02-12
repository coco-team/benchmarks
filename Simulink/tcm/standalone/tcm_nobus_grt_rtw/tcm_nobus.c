/*
 * tcm_nobus.c
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

/* Block signals (auto storage) */
B_tcm_nobus_T tcm_nobus_B;

/* Continuous states */
X_tcm_nobus_T tcm_nobus_X;

/* Block states (auto storage) */
DW_tcm_nobus_T tcm_nobus_DW;

/* Previous zero-crossings (trigger) states */
PrevZCX_tcm_nobus_T tcm_nobus_PrevZCX;

/* External inputs (root inport signals with auto storage) */
ExtU_tcm_nobus_T tcm_nobus_U;

/* External outputs (root outports fed by signals with auto storage) */
ExtY_tcm_nobus_T tcm_nobus_Y;

/* Real-time model */
RT_MODEL_tcm_nobus_T tcm_nobus_M_;
RT_MODEL_tcm_nobus_T *const tcm_nobus_M = &tcm_nobus_M_;

/*
 * This function updates continuous states using the ODE3 fixed-step
 * solver algorithm
 */
static void rt_ertODEUpdateContinuousStates(RTWSolverInfo *si )
{
  /* Solver Matrices */
  static const real_T rt_ODE3_A[3] = {
    1.0/2.0, 3.0/4.0, 1.0
  };

  static const real_T rt_ODE3_B[3][3] = {
    { 1.0/2.0, 0.0, 0.0 },

    { 0.0, 3.0/4.0, 0.0 },

    { 2.0/9.0, 1.0/3.0, 4.0/9.0 }
  };

  time_T t = rtsiGetT(si);
  time_T tnew = rtsiGetSolverStopTime(si);
  time_T h = rtsiGetStepSize(si);
  real_T *x = rtsiGetContStates(si);
  ODE3_IntgData *id = (ODE3_IntgData *)rtsiGetSolverData(si);
  real_T *y = id->y;
  real_T *f0 = id->f[0];
  real_T *f1 = id->f[1];
  real_T *f2 = id->f[2];
  real_T hB[3];
  int_T i;
  int_T nXc = 10;
  rtsiSetSimTimeStep(si,MINOR_TIME_STEP);

  /* Save the state values at time t in y, we'll use x as ynew. */
  (void) memcpy(y, x,
                (uint_T)nXc*sizeof(real_T));

  /* Assumes that rtsiSetT and ModelOutputs are up-to-date */
  /* f0 = f(t,y) */
  rtsiSetdX(si, f0);
  tcm_nobus_derivatives();

  /* f(:,2) = feval(odefile, t + hA(1), y + f*hB(:,1), args(:)(*)); */
  hB[0] = h * rt_ODE3_B[0][0];
  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0]);
  }

  rtsiSetT(si, t + h*rt_ODE3_A[0]);
  rtsiSetdX(si, f1);
  tcm_nobus_output();
  tcm_nobus_derivatives();

  /* f(:,3) = feval(odefile, t + hA(2), y + f*hB(:,2), args(:)(*)); */
  for (i = 0; i <= 1; i++) {
    hB[i] = h * rt_ODE3_B[1][i];
  }

  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0] + f1[i]*hB[1]);
  }

  rtsiSetT(si, t + h*rt_ODE3_A[1]);
  rtsiSetdX(si, f2);
  tcm_nobus_output();
  tcm_nobus_derivatives();

  /* tnew = t + hA(3);
     ynew = y + f*hB(:,3); */
  for (i = 0; i <= 2; i++) {
    hB[i] = h * rt_ODE3_B[2][i];
  }

  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0] + f1[i]*hB[1] + f2[i]*hB[2]);
  }

  rtsiSetT(si, tnew);
  rtsiSetSimTimeStep(si,MAJOR_TIME_STEP);
}

/* Model output function */
void tcm_nobus_output(void)
{
  /* local block i/o variables */
  real_T rtb_Integrator1;
  real_T rtb_Enforcelowlim_c;
  real_T rtb_Switch_o;
  boolean_T rtb_APFPAEng;
  real_T rtb_Switch1_h;
  boolean_T rtb_APThrotEng;
  boolean_T rtb_RelationalOperator_p;
  boolean_T rtb_RelationalOperator1_k;
  boolean_T rtb_RelationalOperator1_l;
  real_T rtb_YD_wo;
  real_T rtb_Switch1_idx_0;
  real_T rtb_Switch1_idx_1;
  real_T rtb_Switch1_idx_2;
  real_T rtb_Gain1_idx_0;
  real_T rtb_Gain1_idx_1;
  real_T rtb_Switch1_m_idx_1;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* set solver stop time */
    if (!(tcm_nobus_M->Timing.clockTick0+1)) {
      rtsiSetSolverStopTime(&tcm_nobus_M->solverInfo,
                            ((tcm_nobus_M->Timing.clockTickH0 + 1) *
        tcm_nobus_M->Timing.stepSize0 * 4294967296.0));
    } else {
      rtsiSetSolverStopTime(&tcm_nobus_M->solverInfo,
                            ((tcm_nobus_M->Timing.clockTick0 + 1) *
        tcm_nobus_M->Timing.stepSize0 + tcm_nobus_M->Timing.clockTickH0 *
        tcm_nobus_M->Timing.stepSize0 * 4294967296.0));
    }
  }                                    /* end MajorTimeStep */

  /* Update absolute time of base rate at minor time step */
  if (rtmIsMinorTimeStep(tcm_nobus_M)) {
    tcm_nobus_M->Timing.t[0] = rtsiGetT(&tcm_nobus_M->solverInfo);
  }

  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Constant: '<S1>/APFPAEng' */
    rtb_APFPAEng = tcm_nobus_P.APFPAEng_Value;

    /* Logic: '<S21>/Logical Operator' */
    tcm_nobus_B.LogicalOperator = !rtb_APFPAEng;
  }

  /* Gain: '<S21>/Kgamerr' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_Switch1_h = tcm_nobus_P.Kgamerr_Gain * tcm_nobus_U.Sensors[6];

  /* Sum: '<S21>/Sum' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.Sum = tcm_nobus_U.Sensors[1] + rtb_Switch1_h;

  /* Integrator: '<S21>/Integ_FPA' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    ZCEventType zcEvent;
    zcEvent = ((ZCEventType) ((tcm_nobus_B.LogicalOperator !=
      (tcm_nobus_PrevZCX.Integ_FPA_Reset_ZCE == POS_ZCSIG)) &&
                (tcm_nobus_PrevZCX.Integ_FPA_Reset_ZCE != UNINITIALIZED_ZCSIG)));

    /* evaluate zero-crossings and the level of the reset signal */
    tcm_nobus_PrevZCX.Integ_FPA_Reset_ZCE = (ZCSigState)
      tcm_nobus_B.LogicalOperator;
    if (zcEvent || tcm_nobus_B.LogicalOperator ||
        tcm_nobus_DW.Integ_FPA_IWORK.IcNeedsLoading) {
      tcm_nobus_X.Integ_FPA_CSTATE = tcm_nobus_B.Sum;
    }
  }

  rtb_Switch_o = tcm_nobus_X.Integ_FPA_CSTATE;

  /* Sum: '<S21>/Sum1' */
  tcm_nobus_B.PitchCmd = rtb_Switch_o - rtb_Switch1_h;

  /* Gain: '<S4>/k5' */
  tcm_nobus_B.k5 = tcm_nobus_P.k5_Gain * tcm_nobus_B.PitchCmd;

  /* Sum: '<S23>/Sum' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.Pitcherror = tcm_nobus_B.k5 - tcm_nobus_U.Sensors[1];

  /* TransferFcn: '<S23>/Transfer Fcn' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_Switch_o = 0.0;
  rtb_Switch_o += tcm_nobus_P.TransferFcn_C * tcm_nobus_X.TransferFcn_CSTATE;
  rtb_Switch_o += tcm_nobus_P.TransferFcn_D * tcm_nobus_U.Sensors[2];

  /* Gain: '<S23>/Kwo' */
  tcm_nobus_B.qdegwo = tcm_nobus_P.Kwo_Gain * rtb_Switch_o;

  /* Sum: '<S23>/Sum1' incorporates:
   *  Gain: '<S23>/Kpitch'
   */
  tcm_nobus_B.dec = tcm_nobus_B.qdegwo - tcm_nobus_P.Kpitch_Gain *
    tcm_nobus_B.Pitcherror;

  /* Lookup: '<S23>/Kcas' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.Kcas = rt_Lookup(tcm_nobus_P.Kcas_XData_k, 4, tcm_nobus_U.Sensors
    [7], tcm_nobus_P.Kcas_YData_a);

  /* Product: '<S23>/Product' */
  tcm_nobus_B.elevcmd = tcm_nobus_B.dec * tcm_nobus_B.Kcas;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Constant: '<S1>/APAltEng' */
    tcm_nobus_B.APAltEng = tcm_nobus_P.APAltEng_Value;

    /* Logic: '<S20>/Logical Operator5' incorporates:
     *  Constant: '<S20>/zero10'
     *  Logic: '<S4>/Logical Operator'
     */
    tcm_nobus_B.LogicalOperator5 = ((tcm_nobus_B.APAltEng || rtb_APFPAEng) &&
      (tcm_nobus_P.zero10_Value != 0.0));
  }

  /* Switch: '<S20>/Switch1' incorporates:
   *  Constant: '<S20>/zero9'
   */
  if (tcm_nobus_B.LogicalOperator5) {
    rtb_Switch_o = tcm_nobus_B.elevcmd;
  } else {
    rtb_Switch_o = tcm_nobus_P.zero9_Value;
  }

  /* End of Switch: '<S20>/Switch1' */

  /* Switch: '<S22>/Switch1' incorporates:
   *  Inport: '<Root>/ManualCommands '
   */
  if (tcm_nobus_U.ManualCommands[0] != 0.0) {
    rtb_Switch1_idx_0 = rtb_Switch_o;
  } else {
    rtb_Switch1_idx_0 = tcm_nobus_U.ManualCommands[0];
  }

  if (tcm_nobus_U.ManualCommands[1] != 0.0) {
    rtb_Switch1_idx_1 = rtb_Switch_o;
  } else {
    rtb_Switch1_idx_1 = tcm_nobus_U.ManualCommands[1];
  }

  if (tcm_nobus_U.ManualCommands[2] != 0.0) {
    rtb_Switch1_idx_2 = rtb_Switch_o;
  } else {
    rtb_Switch1_idx_2 = tcm_nobus_U.ManualCommands[2];
  }

  /* End of Switch: '<S22>/Switch1' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Gain: '<S11>/sgn' incorporates:
     *  Constant: '<S1>/rollLimit'
     */
    tcm_nobus_B.sgn = tcm_nobus_P.sgn_Gain * tcm_nobus_P.rollLimit_Value;

    /* Constant: '<S1>/APHeadEng' */
    rtb_APThrotEng = tcm_nobus_P.APHeadEng_Value;

    /* Logic: '<S11>/Logical Operator' incorporates:
     *  Constant: '<S1>/APHeadEng'
     */
    tcm_nobus_B.LogicalOperator_j = !tcm_nobus_P.APHeadEng_Value;
  }

  /* Integrator: '<S15>/Integrator' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    ZCEventType zcEvent;
    zcEvent = ((ZCEventType) ((tcm_nobus_B.LogicalOperator_j !=
      (tcm_nobus_PrevZCX.Integrator_Reset_ZCE == POS_ZCSIG)) &&
                (tcm_nobus_PrevZCX.Integrator_Reset_ZCE != UNINITIALIZED_ZCSIG)));

    /* evaluate zero-crossings and the level of the reset signal */
    tcm_nobus_PrevZCX.Integrator_Reset_ZCE = (ZCSigState)
      tcm_nobus_B.LogicalOperator_j;
    if (zcEvent || tcm_nobus_B.LogicalOperator_j ||
        tcm_nobus_DW.Integrator_IWORK.IcNeedsLoading) {
      tcm_nobus_X.Integrator_CSTATE = tcm_nobus_U.Sensors[8];
    }
  }

  rtb_Switch_o = tcm_nobus_X.Integrator_CSTATE;

  /* RelationalOperator: '<S15>/Relational Operator' incorporates:
   *  Constant: '<S1>/rollLimit'
   */
  rtb_RelationalOperator_p = (tcm_nobus_P.rollLimit_Value <= rtb_Switch_o);

  /* Switch: '<S15>/Switch1' incorporates:
   *  Constant: '<S1>/rollLimit'
   */
  if (rtb_RelationalOperator_p) {
    rtb_Switch_o = tcm_nobus_P.rollLimit_Value;
  }

  /* End of Switch: '<S15>/Switch1' */

  /* RelationalOperator: '<S15>/Relational Operator1' */
  rtb_RelationalOperator1_k = (tcm_nobus_B.sgn >= rtb_Switch_o);

  /* Switch: '<S15>/Switch2' */
  if (rtb_RelationalOperator1_k) {
    tcm_nobus_B.Switch2 = tcm_nobus_B.sgn;
  } else {
    tcm_nobus_B.Switch2 = rtb_Switch_o;
  }

  /* End of Switch: '<S15>/Switch2' */

  /* Sum: '<S13>/Sum' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.rollerr = tcm_nobus_B.Switch2 - tcm_nobus_U.Sensors[8];

  /* ZeroPole: '<S13>/rollrate_IL' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.pdegwo = 0.0;
  tcm_nobus_B.pdegwo += tcm_nobus_P.rollrate_IL_C *
    tcm_nobus_X.rollrate_IL_CSTATE;
  tcm_nobus_B.pdegwo += tcm_nobus_P.rollrate_IL_D * tcm_nobus_U.Sensors[11];

  /* Lookup: '<S13>/Kcas' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.kcas = rt_Lookup(tcm_nobus_P.Kcas_XData_o, 4, tcm_nobus_U.Sensors
    [7], tcm_nobus_P.Kcas_YData_p);

  /* Product: '<S13>/Product' incorporates:
   *  Gain: '<S13>/Kphierr'
   *  Sum: '<S13>/Sum1'
   */
  tcm_nobus_B.ailcmd = (tcm_nobus_P.Kphierr_Gain * tcm_nobus_B.rollerr -
                        tcm_nobus_B.pdegwo) * tcm_nobus_B.kcas;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Logic: '<S10>/Logical Operator5' incorporates:
     *  Constant: '<S10>/zero10'
     */
    tcm_nobus_B.LogicalOperator5_l = (rtb_APThrotEng &&
      (tcm_nobus_P.zero10_Value_p != 0.0));
  }

  /* Switch: '<S10>/Switch1' incorporates:
   *  Constant: '<S10>/zero9'
   */
  if (tcm_nobus_B.LogicalOperator5_l) {
    rtb_Switch_o = tcm_nobus_B.ailcmd;
  } else {
    rtb_Switch_o = tcm_nobus_P.zero9_Value_d;
  }

  /* End of Switch: '<S10>/Switch1' */

  /* Switch: '<S12>/Switch1' incorporates:
   *  Gain: '<S3>/Gain1'
   *  Inport: '<Root>/ManualCommands '
   */
  if (tcm_nobus_U.ManualCommands[3] != 0.0) {
    rtb_Gain1_idx_1 = rtb_Switch_o;
  } else {
    rtb_Gain1_idx_1 = tcm_nobus_U.ManualCommands[3];
  }

  /* Gain: '<S3>/Gain1' */
  rtb_Gain1_idx_0 = tcm_nobus_P.Gain1_Gain * rtb_Gain1_idx_1;

  /* Switch: '<S12>/Switch1' incorporates:
   *  Gain: '<S3>/Gain1'
   *  Inport: '<Root>/ManualCommands '
   */
  if (tcm_nobus_U.ManualCommands[4] != 0.0) {
    rtb_Gain1_idx_1 = rtb_Switch_o;
  } else {
    rtb_Gain1_idx_1 = tcm_nobus_U.ManualCommands[4];
  }

  /* Gain: '<S3>/Gain1' */
  rtb_Gain1_idx_1 *= tcm_nobus_P.Gain1_Gain;

  /* Gain: '<S5>/Kr' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.Kr = tcm_nobus_P.Kr_Gain * tcm_nobus_U.Sensors[12];
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Logic: '<S28>/Logical Operator5' incorporates:
     *  Constant: '<S1>/YDEngage'
     *  Constant: '<S28>/zero10'
     */
    tcm_nobus_B.LogicalOperator5_k = ((tcm_nobus_P.YDEngage_Value != 0.0) &&
      (tcm_nobus_P.zero10_Value_e != 0.0));
  }

  /* Switch: '<S28>/Switch1' incorporates:
   *  Constant: '<S28>/zero9'
   *  Inport: '<Root>/Sensors'
   *  Lookup: '<S5>/Kcas'
   *  Product: '<S5>/Product'
   *  TransferFcn: '<S5>/YD_wo'
   */
  if (tcm_nobus_B.LogicalOperator5_k) {
    tcm_nobus_B.Switch1 = (tcm_nobus_P.YD_wo_C * tcm_nobus_X.YD_wo_CSTATE +
      tcm_nobus_P.YD_wo_D * tcm_nobus_B.Kr) * rt_Lookup(tcm_nobus_P.Kcas_XData,
      4, tcm_nobus_U.Sensors[7], tcm_nobus_P.Kcas_YData);
  } else {
    tcm_nobus_B.Switch1 = tcm_nobus_P.zero9_Value_g;
  }

  /* End of Switch: '<S28>/Switch1' */

  /* Switch: '<S29>/Switch1' incorporates:
   *  Inport: '<Root>/ManualCommands '
   */
  if (tcm_nobus_U.ManualCommands[5] != 0.0) {
    rtb_Switch1_h = tcm_nobus_B.Switch1;
  } else {
    rtb_Switch1_h = tcm_nobus_U.ManualCommands[5];
  }

  if (tcm_nobus_U.ManualCommands[6] != 0.0) {
    rtb_Switch1_m_idx_1 = tcm_nobus_B.Switch1;
  } else {
    rtb_Switch1_m_idx_1 = tcm_nobus_U.ManualCommands[6];
  }

  /* End of Switch: '<S29>/Switch1' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Constant: '<S1>/APThrotEng' */
    rtb_APThrotEng = tcm_nobus_P.APThrotEng_Value;

    /* Logic: '<S2>/Logical Operator' incorporates:
     *  Constant: '<S1>/APThrotEng'
     */
    tcm_nobus_B.LogicalOperator_b = !tcm_nobus_P.APThrotEng_Value;

    /* Constant: '<S2>/ICthrot' */
    tcm_nobus_B.ICthrot = tcm_nobus_P.bias.throttle;
  }

  /* Integrator: '<S9>/Integrator1' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    ZCEventType zcEvent;
    zcEvent = ((ZCEventType) ((tcm_nobus_B.LogicalOperator_b !=
      (tcm_nobus_PrevZCX.Integrator1_Reset_ZCE == POS_ZCSIG)) &&
                (tcm_nobus_PrevZCX.Integrator1_Reset_ZCE != UNINITIALIZED_ZCSIG)));

    /* evaluate zero-crossings and the level of the reset signal */
    tcm_nobus_PrevZCX.Integrator1_Reset_ZCE = (ZCSigState)
      tcm_nobus_B.LogicalOperator_b;
    if (zcEvent || tcm_nobus_B.LogicalOperator_b ||
        tcm_nobus_DW.Integrator1_IWORK.IcNeedsLoading) {
      tcm_nobus_X.Integrator1_CSTATE = tcm_nobus_B.ICthrot;
    }
  }

  rtb_Integrator1 = tcm_nobus_X.Integrator1_CSTATE;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Logic: '<S6>/Logical Operator5' incorporates:
     *  Constant: '<S6>/zero10'
     */
    tcm_nobus_B.LogicalOperator5_c = (rtb_APThrotEng &&
      (tcm_nobus_P.zero10_Value_b != 0.0));
  }

  /* Switch: '<S6>/Switch1' incorporates:
   *  Constant: '<S2>/ICthrot1'
   *  Constant: '<S6>/zero9'
   *  Sum: '<S2>/Sum5'
   */
  if (tcm_nobus_B.LogicalOperator5_c) {
    /* Sum: '<S2>/Sum3' incorporates:
     *  Gain: '<S2>/Kr1'
     *  Inport: '<Root>/Sensors'
     */
    rtb_YD_wo = rtb_Integrator1 - tcm_nobus_P.Kr1_Gain * tcm_nobus_U.Sensors[14];

    /* Switch: '<S8>/Switch2' incorporates:
     *  Constant: '<S1>/maxthrot'
     *  Constant: '<S1>/minthrot'
     *  RelationalOperator: '<S8>/LowerRelop1'
     *  RelationalOperator: '<S8>/UpperRelop'
     *  Switch: '<S8>/Switch'
     */
    if (rtb_YD_wo > tcm_nobus_P.maxthrot_Value) {
      rtb_YD_wo = tcm_nobus_P.maxthrot_Value;
    } else {
      if (rtb_YD_wo < tcm_nobus_P.minthrot_Value) {
        /* Switch: '<S8>/Switch' incorporates:
         *  Constant: '<S1>/minthrot'
         */
        rtb_YD_wo = tcm_nobus_P.minthrot_Value;
      }
    }

    /* End of Switch: '<S8>/Switch2' */
    rtb_Switch_o = rtb_YD_wo - tcm_nobus_P.bias.throttle;
  } else {
    rtb_Switch_o = tcm_nobus_P.zero9_Value_j;
  }

  /* End of Switch: '<S6>/Switch1' */

  /* Outport: '<Root>/ActuatorsCommands' */
  tcm_nobus_Y.ActuatorsCommands[0] = rtb_Switch1_idx_0;
  tcm_nobus_Y.ActuatorsCommands[1] = rtb_Switch1_idx_1;
  tcm_nobus_Y.ActuatorsCommands[2] = rtb_Switch1_idx_2;
  tcm_nobus_Y.ActuatorsCommands[3] = rtb_Gain1_idx_0;
  tcm_nobus_Y.ActuatorsCommands[4] = rtb_Gain1_idx_1;
  tcm_nobus_Y.ActuatorsCommands[5] = rtb_Switch1_h;
  tcm_nobus_Y.ActuatorsCommands[6] = rtb_Switch1_m_idx_1;

  /* Switch: '<S7>/Switch1' incorporates:
   *  Inport: '<Root>/ManualCommands '
   *  Outport: '<Root>/ActuatorsCommands'
   */
  if (tcm_nobus_U.ManualCommands[7] != 0.0) {
    tcm_nobus_Y.ActuatorsCommands[7] = rtb_Switch_o;
  } else {
    tcm_nobus_Y.ActuatorsCommands[7] = tcm_nobus_U.ManualCommands[7];
  }

  if (tcm_nobus_U.ManualCommands[8] != 0.0) {
    tcm_nobus_Y.ActuatorsCommands[8] = rtb_Switch_o;
  } else {
    tcm_nobus_Y.ActuatorsCommands[8] = tcm_nobus_U.ManualCommands[8];
  }

  /* End of Switch: '<S7>/Switch1' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
  }

  /* Gain: '<S2>/Gain1' incorporates:
   *  Constant: '<S2>/RollComp1'
   *  Gain: '<S2>/Gain'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S2>/Sum'
   *  Trigonometry: '<S2>/Trigonometric Function'
   */
  tcm_nobus_B.rollcomp = (tcm_nobus_P.RollComp1_Value - cos
    (tcm_nobus_P.Gain_Gain * tcm_nobus_U.Sensors[8])) * tcm_nobus_P.Gain1_Gain_i;

  /* TransferFcn: '<S2>/Transfer Fcn' */
  rtb_Switch_o = 0.0;
  rtb_Switch_o += tcm_nobus_P.TransferFcn_C_o * tcm_nobus_X.TransferFcn_CSTATE_f;
  rtb_Switch_o += tcm_nobus_P.TransferFcn_D_h * tcm_nobus_B.rollcomp;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Switch: '<S2>/PHIMC1' incorporates:
     *  Constant: '<S1>/MachSel'
     */
    if (tcm_nobus_P.MachSel_Value >= tcm_nobus_P.PHIMC1_Threshold) {
      /* Gain: '<S2>/Ktas' incorporates:
       *  Constant: '<S1>/Machcmd'
       *  Constant: '<S2>/one'
       *  Gain: '<S2>/kt2fps1'
       *  Inport: '<Root>/Sensors'
       *  Product: '<S2>/Product'
       *  Product: '<S2>/Product1'
       *  Sum: '<S2>/Sum4'
       */
      tcm_nobus_B.Ktas = (tcm_nobus_P.Machcmd_Value / tcm_nobus_U.Sensors[13] -
                          tcm_nobus_P.one_Value) * (tcm_nobus_P.kt2fps1_Gain *
        tcm_nobus_U.Sensors[5]) * tcm_nobus_P.Ktas_Gain;
      tcm_nobus_B.PHIMC1 = tcm_nobus_B.Ktas;
    } else {
      /* Gain: '<S2>/Kcas' incorporates:
       *  Constant: '<S1>/CAScmd'
       *  Gain: '<S2>/kt2fps'
       *  Inport: '<Root>/Sensors'
       *  Sum: '<S2>/Sum2'
       */
      tcm_nobus_B.Kcas_d = (tcm_nobus_P.CAScmd_Value - tcm_nobus_U.Sensors[7]) *
        tcm_nobus_P.kt2fps_Gain * tcm_nobus_P.Kcas_Gain;
      tcm_nobus_B.PHIMC1 = tcm_nobus_B.Kcas_d;
    }

    /* End of Switch: '<S2>/PHIMC1' */
  }

  /* Gain: '<S2>/Kr' incorporates:
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S2>/Sum1'
   */
  rtb_Switch_o = ((rtb_Switch_o + tcm_nobus_B.PHIMC1) - tcm_nobus_U.Sensors[14])
    * tcm_nobus_P.Kr_Gain_h;

  /* Switch: '<S9>/Switch1' incorporates:
   *  Constant: '<S1>/maxthrot'
   *  Constant: '<S1>/minthrot'
   *  Constant: '<S9>/Constant1'
   *  Constant: '<S9>/Constant2'
   *  Constant: '<S9>/Constant3'
   *  Logic: '<S9>/Logical Operator1'
   *  Logic: '<S9>/Logical Operator2'
   *  Logic: '<S9>/Logical Operator3'
   *  RelationalOperator: '<S9>/Relational Operator1'
   *  RelationalOperator: '<S9>/Relational Operator2'
   *  RelationalOperator: '<S9>/Relational Operator3'
   *  RelationalOperator: '<S9>/Relational Operator4'
   */
  if (((rtb_Integrator1 >= tcm_nobus_P.maxthrot_Value) && (rtb_Switch_o >
        tcm_nobus_P.Constant2_Value)) || ((rtb_Integrator1 <=
        tcm_nobus_P.minthrot_Value) && (rtb_Switch_o <
        tcm_nobus_P.Constant3_Value))) {
    tcm_nobus_B.Switch1_c = tcm_nobus_P.Constant1_Value;
  } else {
    tcm_nobus_B.Switch1_c = rtb_Switch_o;
  }

  /* End of Switch: '<S9>/Switch1' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Logic: '<S14>/Logical Operator' incorporates:
     *  Constant: '<S1>/APHdgCmd'
     */
    tcm_nobus_B.LogicalOperator_e = !(tcm_nobus_P.ap.headcmd != 0.0);
  }

  /* Integrator: '<S14>/Integrator1' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    ZCEventType zcEvent;
    zcEvent = ((ZCEventType) ((tcm_nobus_B.LogicalOperator_e !=
      (tcm_nobus_PrevZCX.Integrator1_Reset_ZCE_m == POS_ZCSIG)) &&
                (tcm_nobus_PrevZCX.Integrator1_Reset_ZCE_m !=
                 UNINITIALIZED_ZCSIG)));

    /* evaluate zero-crossings and the level of the reset signal */
    tcm_nobus_PrevZCX.Integrator1_Reset_ZCE_m = (ZCSigState)
      tcm_nobus_B.LogicalOperator_e;
    if (zcEvent || tcm_nobus_B.LogicalOperator_e ||
        tcm_nobus_DW.Integrator1_IWORK_a.IcNeedsLoading) {
      tcm_nobus_X.Integrator1_CSTATE_f = tcm_nobus_U.Sensors[9];
    }
  }

  tcm_nobus_B.HdgCmd = tcm_nobus_X.Integrator1_CSTATE_f;

  /* Gain: '<S14>/k2' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_Switch_o = tcm_nobus_P.k2_Gain * tcm_nobus_U.Sensors[5];

  /* Saturate: '<S14>/Saturation' */
  if (rtb_Switch_o > tcm_nobus_P.Saturation_UpperSat) {
    rtb_Switch_o = tcm_nobus_P.Saturation_UpperSat;
  } else {
    if (rtb_Switch_o < tcm_nobus_P.Saturation_LowerSat) {
      rtb_Switch_o = tcm_nobus_P.Saturation_LowerSat;
    }
  }

  /* End of Saturate: '<S14>/Saturation' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Gain: '<S14>/k5' incorporates:
     *  Constant: '<S1>/rollLimit'
     *  Gain: '<S14>/k3'
     *  Gain: '<S14>/k4'
     *  Trigonometry: '<S14>/Trigonometric Function'
     */
    tcm_nobus_B.k5_m = tan(tcm_nobus_P.k3_Gain * tcm_nobus_P.rollLimit_Value) *
      tcm_nobus_P.k4_Gain * tcm_nobus_P.k5_Gain_h;
  }

  /* Fcn: '<S14>/Fcn2' */
  rtb_Switch1_h = tcm_nobus_B.k5_m / rtb_Switch_o;

  /* Gain: '<S14>/k1' */
  rtb_YD_wo = tcm_nobus_P.k1_Gain * rtb_Switch1_h;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Constant: '<S14>/init' */
    tcm_nobus_B.init = tcm_nobus_P.init_Value;
  }

  /* Integrator: '<S18>/Integrator' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    ZCEventType zcEvent;
    zcEvent = ((ZCEventType) ((tcm_nobus_B.LogicalOperator_e !=
      (tcm_nobus_PrevZCX.Integrator_Reset_ZCE_o == POS_ZCSIG)) &&
                (tcm_nobus_PrevZCX.Integrator_Reset_ZCE_o != UNINITIALIZED_ZCSIG)));

    /* evaluate zero-crossings and the level of the reset signal */
    tcm_nobus_PrevZCX.Integrator_Reset_ZCE_o = (ZCSigState)
      tcm_nobus_B.LogicalOperator_e;
    if (zcEvent || tcm_nobus_B.LogicalOperator_e ||
        tcm_nobus_DW.Integrator_IWORK_n.IcNeedsLoading) {
      tcm_nobus_X.Integrator_CSTATE_h = tcm_nobus_B.init;
    }
  }

  rtb_Enforcelowlim_c = tcm_nobus_X.Integrator_CSTATE_h;

  /* RelationalOperator: '<S18>/Relational Operator' */
  rtb_APThrotEng = (rtb_Switch1_h <= rtb_Enforcelowlim_c);

  /* Switch: '<S18>/Switch1' */
  if (!rtb_APThrotEng) {
    rtb_Switch1_h = rtb_Enforcelowlim_c;
  }

  /* End of Switch: '<S18>/Switch1' */

  /* RelationalOperator: '<S18>/Relational Operator1' */
  rtb_RelationalOperator1_l = (rtb_YD_wo >= rtb_Switch1_h);

  /* Switch: '<S18>/Switch2' */
  if (rtb_RelationalOperator1_l) {
    tcm_nobus_B.Switch2_i = rtb_YD_wo;
  } else {
    tcm_nobus_B.Switch2_i = rtb_Switch1_h;
  }

  /* End of Switch: '<S18>/Switch2' */

  /* Sum: '<S11>/Sum' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.psie = tcm_nobus_B.HdgCmd - tcm_nobus_U.Sensors[9];

  /* Sum: '<S11>/Sum2' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.psidote = tcm_nobus_B.Switch2_i - tcm_nobus_U.Sensors[10];

  /* Gain: '<S11>/Khdgrte' incorporates:
   *  Gain: '<S11>/Khdg'
   *  Sum: '<S11>/Sum1'
   */
  tcm_nobus_B.phidotc = (tcm_nobus_P.Khdg_Gain * tcm_nobus_B.psie +
    tcm_nobus_B.psidote) * tcm_nobus_P.Khdgrte_Gain;

  /* Gain: '<S11>/Khdg1' incorporates:
   *  Constant: '<S1>/rollLimit'
   *  Sum: '<S11>/Sum3'
   */
  rtb_Enforcelowlim_c = ((0.0 - tcm_nobus_B.Switch2) -
    tcm_nobus_P.rollLimit_Value) * tcm_nobus_P.Khdg1_Gain;

  /* MinMax: '<S11>/MinMax1' */
  if ((tcm_nobus_B.phidotc >= rtb_Enforcelowlim_c) || rtIsNaN
      (rtb_Enforcelowlim_c)) {
    tcm_nobus_B.phidotcmx = tcm_nobus_B.phidotc;
  } else {
    tcm_nobus_B.phidotcmx = rtb_Enforcelowlim_c;
  }

  /* End of MinMax: '<S11>/MinMax1' */

  /* Gain: '<S11>/Khdg2' incorporates:
   *  Constant: '<S1>/rollLimit'
   *  Sum: '<S11>/Sum4'
   */
  rtb_Enforcelowlim_c = (tcm_nobus_P.rollLimit_Value - tcm_nobus_B.Switch2) *
    tcm_nobus_P.Khdg2_Gain;

  /* MinMax: '<S11>/MinMax' */
  if ((tcm_nobus_B.phidotcmx <= rtb_Enforcelowlim_c) || rtIsNaN
      (rtb_Enforcelowlim_c)) {
    tcm_nobus_B.phidotcmn = tcm_nobus_B.phidotcmx;
  } else {
    tcm_nobus_B.phidotcmn = rtb_Enforcelowlim_c;
  }

  /* End of MinMax: '<S11>/MinMax' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
  }

  /* Fcn: '<S14>/Fcn1' */
  rtb_Switch1_h = 514.8 / rtb_Switch_o;

  /* Fcn: '<S14>/Fcn' */
  rtb_Switch_o = 1.6 - 0.0 * rtb_Switch_o;

  /* Sum: '<S14>/Sum2' incorporates:
   *  Constant: '<S1>/APHdgCmd'
   */
  rtb_YD_wo = tcm_nobus_P.ap.headcmd - tcm_nobus_B.HdgCmd;

  /* Switch: '<S16>/Switch1' incorporates:
   *  Constant: '<S16>/Constant1'
   *  Fcn: '<S16>/Fcn1'
   *  Fcn: '<S16>/Fcn2'
   *  RelationalOperator: '<S16>/Relational Operator'
   *  Sum: '<S16>/Sum6'
   */
  if (fabs(rtb_YD_wo) > tcm_nobus_P.Constant1_Value_h) {
    /* Fcn: '<S16>/Fcn1' */
    if (rtb_YD_wo < 0.0) {
      rtb_Gain1_idx_1 = -1.0;
    } else if (rtb_YD_wo > 0.0) {
      rtb_Gain1_idx_1 = 1.0;
    } else if (rtb_YD_wo == 0.0) {
      rtb_Gain1_idx_1 = 0.0;
    } else {
      rtb_Gain1_idx_1 = rtb_YD_wo;
    }

    rtb_Enforcelowlim_c = rtb_YD_wo - 360.0 * rtb_Gain1_idx_1;
  } else {
    rtb_Enforcelowlim_c = rtb_YD_wo;
  }

  /* End of Switch: '<S16>/Switch1' */

  /* Sum: '<S14>/Sum3' incorporates:
   *  Gain: '<S14>/k6'
   *  Product: '<S14>/2zetaOmega'
   *  Product: '<S14>/omegaSq'
   *  Product: '<S14>/omegaSq2'
   */
  rtb_Gain1_idx_1 = rtb_Switch_o * rtb_Switch_o * rtb_Enforcelowlim_c -
    tcm_nobus_P.k6_Gain * rtb_Switch_o * tcm_nobus_B.Switch2_i;

  /* Switch: '<S17>/Switch2' incorporates:
   *  RelationalOperator: '<S17>/LowerRelop1'
   */
  if (rtb_Gain1_idx_1 > rtb_Switch1_h) {
    tcm_nobus_B.Switch2_n = rtb_Switch1_h;
  } else {
    /* Gain: '<S14>/k' */
    rtb_YD_wo = tcm_nobus_P.k_Gain * rtb_Switch1_h;

    /* Switch: '<S17>/Switch' incorporates:
     *  RelationalOperator: '<S17>/UpperRelop'
     */
    if (rtb_Gain1_idx_1 < rtb_YD_wo) {
      tcm_nobus_B.Switch2_n = rtb_YD_wo;
    } else {
      tcm_nobus_B.Switch2_n = rtb_Gain1_idx_1;
    }

    /* End of Switch: '<S17>/Switch' */
  }

  /* End of Switch: '<S17>/Switch2' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
  }

  /* Switch: '<S18>/Switch3' incorporates:
   *  Constant: '<S18>/Constant1'
   *  Constant: '<S18>/Constant2'
   *  Constant: '<S18>/Constant3'
   *  Logic: '<S18>/Logical Operator'
   *  Logic: '<S18>/Logical Operator1'
   *  Logic: '<S18>/Logical Operator2'
   *  RelationalOperator: '<S18>/Relational Operator2'
   *  RelationalOperator: '<S18>/Relational Operator3'
   */
  if ((rtb_APThrotEng && (tcm_nobus_B.Switch2_n > tcm_nobus_P.Constant1_Value_j))
      || ((tcm_nobus_B.Switch2_n < tcm_nobus_P.Constant2_Value_k) &&
          rtb_RelationalOperator1_l)) {
    tcm_nobus_B.Switch3 = tcm_nobus_P.Constant3_Value_i;
  } else {
    tcm_nobus_B.Switch3 = tcm_nobus_B.Switch2_n;
  }

  /* End of Switch: '<S18>/Switch3' */

  /* Switch: '<S15>/Switch3' incorporates:
   *  Constant: '<S15>/Constant1'
   *  Constant: '<S15>/Constant2'
   *  Constant: '<S15>/Constant3'
   *  Logic: '<S15>/Logical Operator'
   *  Logic: '<S15>/Logical Operator1'
   *  Logic: '<S15>/Logical Operator2'
   *  RelationalOperator: '<S15>/Relational Operator2'
   *  RelationalOperator: '<S15>/Relational Operator3'
   */
  if ((rtb_RelationalOperator_p && (tcm_nobus_B.phidotcmn >
        tcm_nobus_P.Constant1_Value_p)) || ((tcm_nobus_B.phidotcmn <
        tcm_nobus_P.Constant2_Value_c) && rtb_RelationalOperator1_k)) {
    tcm_nobus_B.Switch3_p = tcm_nobus_P.Constant3_Value_a;
  } else {
    tcm_nobus_B.Switch3_p = tcm_nobus_B.phidotcmn;
  }

  /* End of Switch: '<S15>/Switch3' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
  }

  /* Abs: '<S19>/Abs' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_Enforcelowlim_c = fabs(tcm_nobus_U.Sensors[4]);

  /* Sum: '<S19>/Sum3' incorporates:
   *  Constant: '<S1>/Constant3'
   */
  rtb_Enforcelowlim_c += tcm_nobus_P.Constant3_Value_m;

  /* Switch: '<S19>/Switch' incorporates:
   *  Constant: '<S19>/Constant1'
   *  Constant: '<S1>/APAltCmd'
   *  Gain: '<S19>/Kh'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S19>/Sum'
   */
  if (tcm_nobus_B.APAltEng) {
    rtb_Switch_o = (tcm_nobus_P.ap.altcmd - tcm_nobus_U.Sensors[0]) *
      tcm_nobus_P.Kh_Gain;
  } else {
    rtb_Switch_o = tcm_nobus_P.Constant1_Value_f;
  }

  /* End of Switch: '<S19>/Switch' */

  /* Gain: '<S19>/k' */
  rtb_Gain1_idx_1 = tcm_nobus_P.k_Gain_p * rtb_Enforcelowlim_c;

  /* MinMax: '<S25>/Enforce low lim' */
  if (!((rtb_Gain1_idx_1 >= rtb_Switch_o) || rtIsNaN(rtb_Switch_o))) {
    rtb_Gain1_idx_1 = rtb_Switch_o;
  }

  /* End of MinMax: '<S25>/Enforce low lim' */

  /* MinMax: '<S25>/Enforce up lim' */
  if ((rtb_Gain1_idx_1 <= rtb_Enforcelowlim_c) || rtIsNaN(rtb_Enforcelowlim_c))
  {
    tcm_nobus_B.Enforceuplim = rtb_Gain1_idx_1;
  } else {
    tcm_nobus_B.Enforceuplim = rtb_Enforcelowlim_c;
  }

  /* End of MinMax: '<S25>/Enforce up lim' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Logic: '<S19>/Logical Operator' */
    tcm_nobus_B.LogicalOperator_ep = !tcm_nobus_B.APAltEng;
  }

  /* Integrator: '<S24>/Integrator' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    ZCEventType zcEvent;
    zcEvent = ((ZCEventType) ((tcm_nobus_B.LogicalOperator_ep !=
      (tcm_nobus_PrevZCX.Integrator_Reset_ZCE_l == POS_ZCSIG)) &&
                (tcm_nobus_PrevZCX.Integrator_Reset_ZCE_l != UNINITIALIZED_ZCSIG)));

    /* evaluate zero-crossings and the level of the reset signal */
    tcm_nobus_PrevZCX.Integrator_Reset_ZCE_l = (ZCSigState)
      tcm_nobus_B.LogicalOperator_ep;
    if (zcEvent || tcm_nobus_B.LogicalOperator_ep ||
        tcm_nobus_DW.Integrator_IWORK_i.IcNeedsLoading) {
      tcm_nobus_X.Integrator_CSTATE_n = tcm_nobus_U.Sensors[4];
    }
  }

  tcm_nobus_B.Integrator = tcm_nobus_X.Integrator_CSTATE_n;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
  }

  /* Gain: '<S19>/kts2fps' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_Enforcelowlim_c = tcm_nobus_P.kts2fps_Gain * tcm_nobus_U.Sensors[3];

  /* Saturate: '<S19>/Saturation' */
  rtb_Gain1_idx_1 = rtb_Enforcelowlim_c;

  /* Gain: '<S24>/Gain' incorporates:
   *  Sum: '<S24>/Sum2'
   */
  rtb_Enforcelowlim_c = (tcm_nobus_B.Enforceuplim - tcm_nobus_B.Integrator) *
    tcm_nobus_P.Gain_Gain_l;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    /* Gain: '<S24>/Gain1' incorporates:
     *  Constant: '<S1>/Constant4'
     */
    tcm_nobus_B.Gain1 = tcm_nobus_P.Gain1_Gain_j * tcm_nobus_P.Constant4_Value;
  }

  /* MinMax: '<S26>/Enforce low lim' */
  if ((tcm_nobus_B.Gain1 >= rtb_Enforcelowlim_c) || rtIsNaN(rtb_Enforcelowlim_c))
  {
    rtb_Enforcelowlim_c = tcm_nobus_B.Gain1;
  }

  /* End of MinMax: '<S26>/Enforce low lim' */

  /* MinMax: '<S26>/Enforce up lim' incorporates:
   *  Constant: '<S1>/Constant4'
   */
  if ((rtb_Enforcelowlim_c <= tcm_nobus_P.Constant4_Value) || rtIsNaN
      (tcm_nobus_P.Constant4_Value)) {
    tcm_nobus_B.Enforceuplim_a = rtb_Enforcelowlim_c;
  } else {
    tcm_nobus_B.Enforceuplim_a = tcm_nobus_P.Constant4_Value;
  }

  /* End of MinMax: '<S26>/Enforce up lim' */

  /* Saturate: '<S19>/Saturation' */
  if (rtb_Gain1_idx_1 > tcm_nobus_P.Saturation_UpperSat_b) {
    rtb_Gain1_idx_1 = tcm_nobus_P.Saturation_UpperSat_b;
  } else {
    if (rtb_Gain1_idx_1 < tcm_nobus_P.Saturation_LowerSat_d) {
      rtb_Gain1_idx_1 = tcm_nobus_P.Saturation_LowerSat_d;
    }
  }

  /* Sum: '<S4>/Sum7' incorporates:
   *  Constant: '<S1>/APFPACmd '
   *  Gain: '<S19>/r2d'
   *  Gain: '<S4>/k2'
   *  Product: '<S19>/Divide'
   */
  tcm_nobus_B.gamcmd = tcm_nobus_B.Integrator / rtb_Gain1_idx_1 *
    tcm_nobus_P.r2d_Gain * tcm_nobus_P.k2_Gain_i + tcm_nobus_P.ap.fpacmd;

  /* Sum: '<S21>/Sum2' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  tcm_nobus_B.gamerr = tcm_nobus_B.gamcmd - tcm_nobus_U.Sensors[6];

  /* Product: '<S21>/Product1' incorporates:
   *  Constant: '<S21>/hddLim'
   *  Gain: '<S21>/kt2fps'
   *  Inport: '<Root>/Sensors'
   */
  rtb_YD_wo = tcm_nobus_P.kt2fps_Gain_l * tcm_nobus_U.Sensors[5] *
    tcm_nobus_P.hddLim_Value;

  /* Gain: '<S21>/KIgamerr' */
  rtb_Switch1_h = tcm_nobus_P.KIgamerr_Gain * tcm_nobus_B.gamerr;

  /* Switch: '<S27>/Switch2' incorporates:
   *  RelationalOperator: '<S27>/LowerRelop1'
   */
  if (rtb_Switch1_h > rtb_YD_wo) {
    tcm_nobus_B.Switch2_o = rtb_YD_wo;
  } else {
    /* Gain: '<S21>/m1' */
    rtb_YD_wo *= tcm_nobus_P.m1_Gain;

    /* Switch: '<S27>/Switch' incorporates:
     *  RelationalOperator: '<S27>/UpperRelop'
     */
    if (rtb_Switch1_h < rtb_YD_wo) {
      tcm_nobus_B.Switch2_o = rtb_YD_wo;
    } else {
      tcm_nobus_B.Switch2_o = rtb_Switch1_h;
    }

    /* End of Switch: '<S27>/Switch' */
  }

  /* End of Switch: '<S27>/Switch2' */
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
  }
}

/* Model update function */
void tcm_nobus_update(void)
{
  /* Update for Integrator: '<S21>/Integ_FPA' */
  tcm_nobus_DW.Integ_FPA_IWORK.IcNeedsLoading = 0;

  /* Update for Integrator: '<S15>/Integrator' */
  tcm_nobus_DW.Integrator_IWORK.IcNeedsLoading = 0;

  /* Update for Integrator: '<S9>/Integrator1' */
  tcm_nobus_DW.Integrator1_IWORK.IcNeedsLoading = 0;

  /* Update for Integrator: '<S14>/Integrator1' */
  tcm_nobus_DW.Integrator1_IWORK_a.IcNeedsLoading = 0;

  /* Update for Integrator: '<S18>/Integrator' */
  tcm_nobus_DW.Integrator_IWORK_n.IcNeedsLoading = 0;

  /* Update for Integrator: '<S24>/Integrator' */
  tcm_nobus_DW.Integrator_IWORK_i.IcNeedsLoading = 0;
  if (rtmIsMajorTimeStep(tcm_nobus_M)) {
    rt_ertODEUpdateContinuousStates(&tcm_nobus_M->solverInfo);
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++tcm_nobus_M->Timing.clockTick0)) {
    ++tcm_nobus_M->Timing.clockTickH0;
  }

  tcm_nobus_M->Timing.t[0] = rtsiGetSolverStopTime(&tcm_nobus_M->solverInfo);

  {
    /* Update absolute timer for sample time: [0.02s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The absolute time is the multiplication of "clockTick1"
     * and "Timing.stepSize1". Size of "clockTick1" ensures timer will not
     * overflow during the application lifespan selected.
     * Timer of this task consists of two 32 bit unsigned integers.
     * The two integers represent the low bits Timing.clockTick1 and the high bits
     * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
     */
    if (!(++tcm_nobus_M->Timing.clockTick1)) {
      ++tcm_nobus_M->Timing.clockTickH1;
    }

    tcm_nobus_M->Timing.t[1] = tcm_nobus_M->Timing.clockTick1 *
      tcm_nobus_M->Timing.stepSize1 + tcm_nobus_M->Timing.clockTickH1 *
      tcm_nobus_M->Timing.stepSize1 * 4294967296.0;
  }
}

/* Derivatives for root system: '<Root>' */
void tcm_nobus_derivatives(void)
{
  XDot_tcm_nobus_T *_rtXdot;
  _rtXdot = ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs);

  /* Derivatives for Integrator: '<S21>/Integ_FPA' */
  {
    if (!tcm_nobus_B.LogicalOperator) {
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integ_FPA_CSTATE =
        tcm_nobus_B.Switch2_o;
    } else {
      /* level reset is active*/
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integ_FPA_CSTATE =
        0.0;
    }
  }

  /* Derivatives for TransferFcn: '<S23>/Transfer Fcn' incorporates:
   *  Derivatives for Inport: '<Root>/Sensors'
   */
  _rtXdot->TransferFcn_CSTATE = 0.0;
  _rtXdot->TransferFcn_CSTATE += tcm_nobus_P.TransferFcn_A *
    tcm_nobus_X.TransferFcn_CSTATE;
  _rtXdot->TransferFcn_CSTATE += tcm_nobus_U.Sensors[2];

  /* Derivatives for Integrator: '<S15>/Integrator' */
  {
    if (!tcm_nobus_B.LogicalOperator_j) {
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator_CSTATE =
        tcm_nobus_B.Switch3_p;
    } else {
      /* level reset is active*/
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator_CSTATE =
        0.0;
    }
  }

  /* Derivatives for ZeroPole: '<S13>/rollrate_IL' incorporates:
   *  Derivatives for Inport: '<Root>/Sensors'
   */
  _rtXdot->rollrate_IL_CSTATE = 0.0;
  _rtXdot->rollrate_IL_CSTATE += tcm_nobus_P.rollrate_IL_A *
    tcm_nobus_X.rollrate_IL_CSTATE;
  _rtXdot->rollrate_IL_CSTATE += tcm_nobus_P.rollrate_IL_B *
    tcm_nobus_U.Sensors[11];

  /* Derivatives for TransferFcn: '<S5>/YD_wo' */
  _rtXdot->YD_wo_CSTATE = 0.0;
  _rtXdot->YD_wo_CSTATE += tcm_nobus_P.YD_wo_A * tcm_nobus_X.YD_wo_CSTATE;
  _rtXdot->YD_wo_CSTATE += tcm_nobus_B.Kr;

  /* Derivatives for Integrator: '<S9>/Integrator1' */
  {
    if (!tcm_nobus_B.LogicalOperator_b) {
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator1_CSTATE =
        tcm_nobus_B.Switch1_c;
    } else {
      /* level reset is active*/
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator1_CSTATE =
        0.0;
    }
  }

  /* Derivatives for TransferFcn: '<S2>/Transfer Fcn' */
  _rtXdot->TransferFcn_CSTATE_f = 0.0;
  _rtXdot->TransferFcn_CSTATE_f += tcm_nobus_P.TransferFcn_A_b *
    tcm_nobus_X.TransferFcn_CSTATE_f;
  _rtXdot->TransferFcn_CSTATE_f += tcm_nobus_B.rollcomp;

  /* Derivatives for Integrator: '<S14>/Integrator1' */
  {
    if (!tcm_nobus_B.LogicalOperator_e) {
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator1_CSTATE_f
        = tcm_nobus_B.Switch2_i;
    } else {
      /* level reset is active*/
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator1_CSTATE_f
        = 0.0;
    }
  }

  /* Derivatives for Integrator: '<S18>/Integrator' */
  {
    if (!tcm_nobus_B.LogicalOperator_e) {
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator_CSTATE_h =
        tcm_nobus_B.Switch3;
    } else {
      /* level reset is active*/
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator_CSTATE_h =
        0.0;
    }
  }

  /* Derivatives for Integrator: '<S24>/Integrator' */
  {
    if (!tcm_nobus_B.LogicalOperator_ep) {
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator_CSTATE_n =
        tcm_nobus_B.Enforceuplim_a;
    } else {
      /* level reset is active*/
      ((XDot_tcm_nobus_T *) tcm_nobus_M->ModelData.derivs)->Integrator_CSTATE_n =
        0.0;
    }
  }
}

/* Model initialize function */
void tcm_nobus_initialize(void)
{
  /* Start for Constant: '<S2>/ICthrot' */
  tcm_nobus_B.ICthrot = tcm_nobus_P.bias.throttle;

  /* Start for Constant: '<S14>/init' */
  tcm_nobus_B.init = tcm_nobus_P.init_Value;
  tcm_nobus_PrevZCX.Integ_FPA_Reset_ZCE = UNINITIALIZED_ZCSIG;
  tcm_nobus_PrevZCX.Integrator_Reset_ZCE = UNINITIALIZED_ZCSIG;
  tcm_nobus_PrevZCX.Integrator1_Reset_ZCE = UNINITIALIZED_ZCSIG;
  tcm_nobus_PrevZCX.Integrator1_Reset_ZCE_m = UNINITIALIZED_ZCSIG;
  tcm_nobus_PrevZCX.Integrator_Reset_ZCE_o = UNINITIALIZED_ZCSIG;
  tcm_nobus_PrevZCX.Integrator_Reset_ZCE_l = UNINITIALIZED_ZCSIG;

  /* InitializeConditions for Integrator: '<S21>/Integ_FPA' */
  if (rtmIsFirstInitCond(tcm_nobus_M)) {
    tcm_nobus_X.Integ_FPA_CSTATE = 0.0;
  }

  tcm_nobus_DW.Integ_FPA_IWORK.IcNeedsLoading = 1;

  /* InitializeConditions for TransferFcn: '<S23>/Transfer Fcn' */
  tcm_nobus_X.TransferFcn_CSTATE = 0.0;

  /* InitializeConditions for Integrator: '<S15>/Integrator' */
  if (rtmIsFirstInitCond(tcm_nobus_M)) {
    tcm_nobus_X.Integrator_CSTATE = 0.0;
  }

  tcm_nobus_DW.Integrator_IWORK.IcNeedsLoading = 1;

  /* InitializeConditions for ZeroPole: '<S13>/rollrate_IL' */
  tcm_nobus_X.rollrate_IL_CSTATE = 0.0;

  /* InitializeConditions for TransferFcn: '<S5>/YD_wo' */
  tcm_nobus_X.YD_wo_CSTATE = 0.0;

  /* InitializeConditions for Integrator: '<S9>/Integrator1' */
  if (rtmIsFirstInitCond(tcm_nobus_M)) {
    tcm_nobus_X.Integrator1_CSTATE = 1.0;
  }

  tcm_nobus_DW.Integrator1_IWORK.IcNeedsLoading = 1;

  /* InitializeConditions for TransferFcn: '<S2>/Transfer Fcn' */
  tcm_nobus_X.TransferFcn_CSTATE_f = 0.0;

  /* InitializeConditions for Integrator: '<S14>/Integrator1' */
  if (rtmIsFirstInitCond(tcm_nobus_M)) {
    tcm_nobus_X.Integrator1_CSTATE_f = 0.0;
  }

  tcm_nobus_DW.Integrator1_IWORK_a.IcNeedsLoading = 1;

  /* InitializeConditions for Integrator: '<S18>/Integrator' */
  if (rtmIsFirstInitCond(tcm_nobus_M)) {
    tcm_nobus_X.Integrator_CSTATE_h = 0.0;
  }

  tcm_nobus_DW.Integrator_IWORK_n.IcNeedsLoading = 1;

  /* InitializeConditions for Integrator: '<S24>/Integrator' */
  if (rtmIsFirstInitCond(tcm_nobus_M)) {
    tcm_nobus_X.Integrator_CSTATE_n = 0.0;
  }

  tcm_nobus_DW.Integrator_IWORK_i.IcNeedsLoading = 1;

  /* set "at time zero" to false */
  if (rtmIsFirstInitCond(tcm_nobus_M)) {
    rtmSetFirstInitCond(tcm_nobus_M, 0);
  }
}

/* Model terminate function */
void tcm_nobus_terminate(void)
{
  /* (no terminate code required) */
}

/*========================================================================*
 * Start of Classic call interface                                        *
 *========================================================================*/

/* Solver interface called by GRT_Main */
#ifndef USE_GENERATED_SOLVER

void rt_ODECreateIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEDestroyIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEUpdateContinuousStates(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

#endif

void MdlOutputs(int_T tid)
{
  tcm_nobus_output();
  UNUSED_PARAMETER(tid);
}

void MdlUpdate(int_T tid)
{
  tcm_nobus_update();
  UNUSED_PARAMETER(tid);
}

void MdlInitializeSizes(void)
{
}

void MdlInitializeSampleTimes(void)
{
}

void MdlInitialize(void)
{
}

void MdlStart(void)
{
  tcm_nobus_initialize();
}

void MdlTerminate(void)
{
  tcm_nobus_terminate();
}

/* Registration function */
RT_MODEL_tcm_nobus_T *tcm_nobus(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)tcm_nobus_M, 0,
                sizeof(RT_MODEL_tcm_nobus_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&tcm_nobus_M->solverInfo,
                          &tcm_nobus_M->Timing.simTimeStep);
    rtsiSetTPtr(&tcm_nobus_M->solverInfo, &rtmGetTPtr(tcm_nobus_M));
    rtsiSetStepSizePtr(&tcm_nobus_M->solverInfo, &tcm_nobus_M->Timing.stepSize0);
    rtsiSetdXPtr(&tcm_nobus_M->solverInfo, &tcm_nobus_M->ModelData.derivs);
    rtsiSetContStatesPtr(&tcm_nobus_M->solverInfo, (real_T **)
                         &tcm_nobus_M->ModelData.contStates);
    rtsiSetNumContStatesPtr(&tcm_nobus_M->solverInfo,
      &tcm_nobus_M->Sizes.numContStates);
    rtsiSetErrorStatusPtr(&tcm_nobus_M->solverInfo, (&rtmGetErrorStatus
      (tcm_nobus_M)));
    rtsiSetRTModelPtr(&tcm_nobus_M->solverInfo, tcm_nobus_M);
  }

  rtsiSetSimTimeStep(&tcm_nobus_M->solverInfo, MAJOR_TIME_STEP);
  tcm_nobus_M->ModelData.intgData.y = tcm_nobus_M->ModelData.odeY;
  tcm_nobus_M->ModelData.intgData.f[0] = tcm_nobus_M->ModelData.odeF[0];
  tcm_nobus_M->ModelData.intgData.f[1] = tcm_nobus_M->ModelData.odeF[1];
  tcm_nobus_M->ModelData.intgData.f[2] = tcm_nobus_M->ModelData.odeF[2];
  tcm_nobus_M->ModelData.contStates = ((real_T *) &tcm_nobus_X);
  rtsiSetSolverData(&tcm_nobus_M->solverInfo, (void *)
                    &tcm_nobus_M->ModelData.intgData);
  rtsiSetSolverName(&tcm_nobus_M->solverInfo,"ode3");

  /* Initialize timing info */
  {
    int_T *mdlTsMap = tcm_nobus_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;
    mdlTsMap[1] = 1;
    tcm_nobus_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    tcm_nobus_M->Timing.sampleTimes = (&tcm_nobus_M->Timing.sampleTimesArray[0]);
    tcm_nobus_M->Timing.offsetTimes = (&tcm_nobus_M->Timing.offsetTimesArray[0]);

    /* task periods */
    tcm_nobus_M->Timing.sampleTimes[0] = (0.0);
    tcm_nobus_M->Timing.sampleTimes[1] = (0.02);

    /* task offsets */
    tcm_nobus_M->Timing.offsetTimes[0] = (0.0);
    tcm_nobus_M->Timing.offsetTimes[1] = (0.0);
  }

  rtmSetTPtr(tcm_nobus_M, &tcm_nobus_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = tcm_nobus_M->Timing.sampleHitArray;
    mdlSampleHits[0] = 1;
    mdlSampleHits[1] = 1;
    tcm_nobus_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(tcm_nobus_M, 10.0);
  tcm_nobus_M->Timing.stepSize0 = 0.02;
  tcm_nobus_M->Timing.stepSize1 = 0.02;
  rtmSetFirstInitCond(tcm_nobus_M, 1);

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    tcm_nobus_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(tcm_nobus_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(tcm_nobus_M->rtwLogInfo, (NULL));
    rtliSetLogT(tcm_nobus_M->rtwLogInfo, "tout");
    rtliSetLogX(tcm_nobus_M->rtwLogInfo, "");
    rtliSetLogXFinal(tcm_nobus_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(tcm_nobus_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(tcm_nobus_M->rtwLogInfo, 0);
    rtliSetLogMaxRows(tcm_nobus_M->rtwLogInfo, 1000);
    rtliSetLogDecimation(tcm_nobus_M->rtwLogInfo, 1);

    /*
     * Set pointers to the data and signal info for each output
     */
    {
      static void * rt_LoggedOutputSignalPtrs[] = {
        &tcm_nobus_Y.ActuatorsCommands[0]
      };

      rtliSetLogYSignalPtrs(tcm_nobus_M->rtwLogInfo, ((LogSignalPtrsType)
        rt_LoggedOutputSignalPtrs));
    }

    {
      static int_T rt_LoggedOutputWidths[] = {
        9
      };

      static int_T rt_LoggedOutputNumDimensions[] = {
        1
      };

      static int_T rt_LoggedOutputDimensions[] = {
        9
      };

      static boolean_T rt_LoggedOutputIsVarDims[] = {
        0
      };

      static void* rt_LoggedCurrentSignalDimensions[] = {
        (NULL)
      };

      static int_T rt_LoggedCurrentSignalDimensionsSize[] = {
        4
      };

      static BuiltInDTypeId rt_LoggedOutputDataTypeIds[] = {
        SS_DOUBLE
      };

      static int_T rt_LoggedOutputComplexSignals[] = {
        0
      };

      static const char_T *rt_LoggedOutputLabels[] = {
        "" };

      static const char_T *rt_LoggedOutputBlockNames[] = {
        "tcm_nobus/ActuatorsCommands" };

      static RTWLogDataTypeConvert rt_RTWLogDataTypeConvert[] = {
        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 }
      };

      static RTWLogSignalInfo rt_LoggedOutputSignalInfo[] = {
        {
          1,
          rt_LoggedOutputWidths,
          rt_LoggedOutputNumDimensions,
          rt_LoggedOutputDimensions,
          rt_LoggedOutputIsVarDims,
          rt_LoggedCurrentSignalDimensions,
          rt_LoggedCurrentSignalDimensionsSize,
          rt_LoggedOutputDataTypeIds,
          rt_LoggedOutputComplexSignals,
          (NULL),

          { rt_LoggedOutputLabels },
          (NULL),
          (NULL),
          (NULL),

          { rt_LoggedOutputBlockNames },

          { (NULL) },
          (NULL),
          rt_RTWLogDataTypeConvert
        }
      };

      rtliSetLogYSignalInfo(tcm_nobus_M->rtwLogInfo, rt_LoggedOutputSignalInfo);

      /* set currSigDims field */
      rt_LoggedCurrentSignalDimensions[0] = &rt_LoggedOutputWidths[0];
    }

    rtliSetLogY(tcm_nobus_M->rtwLogInfo, "yout");
  }

  tcm_nobus_M->solverInfoPtr = (&tcm_nobus_M->solverInfo);
  tcm_nobus_M->Timing.stepSize = (0.02);
  rtsiSetFixedStepSize(&tcm_nobus_M->solverInfo, 0.02);
  rtsiSetSolverMode(&tcm_nobus_M->solverInfo, SOLVER_MODE_SINGLETASKING);

  /* block I/O */
  tcm_nobus_M->ModelData.blockIO = ((void *) &tcm_nobus_B);
  (void) memset(((void *) &tcm_nobus_B), 0,
                sizeof(B_tcm_nobus_T));

  /* parameters */
  tcm_nobus_M->ModelData.defaultParam = ((real_T *)&tcm_nobus_P);

  /* states (continuous) */
  {
    real_T *x = (real_T *) &tcm_nobus_X;
    tcm_nobus_M->ModelData.contStates = (x);
    (void) memset((void *)&tcm_nobus_X, 0,
                  sizeof(X_tcm_nobus_T));
  }

  /* states (dwork) */
  tcm_nobus_M->ModelData.dwork = ((void *) &tcm_nobus_DW);
  (void) memset((void *)&tcm_nobus_DW, 0,
                sizeof(DW_tcm_nobus_T));

  /* external inputs */
  tcm_nobus_M->ModelData.inputs = (((void*)&tcm_nobus_U));
  (void) memset((void *)&tcm_nobus_U, 0,
                sizeof(ExtU_tcm_nobus_T));

  /* external outputs */
  tcm_nobus_M->ModelData.outputs = (&tcm_nobus_Y);
  (void) memset(&tcm_nobus_Y.ActuatorsCommands[0], 0,
                9U*sizeof(real_T));

  /* Initialize Sizes */
  tcm_nobus_M->Sizes.numContStates = (10);/* Number of continuous states */
  tcm_nobus_M->Sizes.numPeriodicContStates = (0);/* Number of periodic continuous states */
  tcm_nobus_M->Sizes.numY = (9);       /* Number of model outputs */
  tcm_nobus_M->Sizes.numU = (26);      /* Number of model inputs */
  tcm_nobus_M->Sizes.sysDirFeedThru = (1);/* The model is direct feedthrough */
  tcm_nobus_M->Sizes.numSampTimes = (2);/* Number of sample times */
  tcm_nobus_M->Sizes.numBlocks = (221);/* Number of blocks */
  tcm_nobus_M->Sizes.numBlockIO = (51);/* Number of block outputs */
  tcm_nobus_M->Sizes.numBlockPrms = (117);/* Sum of parameter "widths" */
  return tcm_nobus_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/
