node top
  (KP_START: bool;
  KP_CLEAR: bool;
  KP_0: bool;
  KP_1: bool;
  KP_2: bool;
  KP_3: bool;
  KP_4: bool;
  KP_5: bool;
  KP_6: bool;
  KP_7: bool;
  KP_8: bool;
  KP_9: bool;
  DOOR_CLOSED: bool)
returns
  (OK: bool);

var
  V17_SETUP: bool;
  V18_COOKING: bool;
  V19_SUSPENDED: bool;
  V20_START_PRESSED: bool;
  V21_CLEAR_PRESSED: bool;
  V25_STEPS_TO_COOK: int;
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock: bool;
  V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step: 
  bool;
  V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY
  : int;
  V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY: int;
  V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY: int;
  V41_rlt__Arrow5: int;
  V42_rlt__Arrow4: int;
  V43_rlt__Arrow3: int;
  V44_rlt__Arrow2: int;
  V45_rlt__Arrow1: int;
  V46_rlt__Arrow: int;
  V47_chart_microwave_mode_logic_start: int;
  V48_chart_microwave_mode_logic_clear_off: int;
  V49_chart_microwave_mode_logic_door_closed: int;
  V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1: bool;
  V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root: int;
  V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root: int;
  V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2: bool;
  V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1: bool;
  V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root: int;
  V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode: int;
  V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root: int;
  V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode: int;
  V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4: bool;
  V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2: bool;
  V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root: int;
  V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining: 
  int;
  V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root: int;
  V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5: bool;
  V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode: int;
  V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root: int;
  V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root: int;
  V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6: bool;
  V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root: int;
  V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode: int;
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root: int;
  V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0: bool;
  V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1: bool;
  V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root: int;
  V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode: int;
  V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2: bool;
  V78_rlt_enter_microwave_mode_logic_ON_rlt_state_4_states___root: int;
  V79_rlt_eval_microwave_mode_logic_rlt_fired_0: bool;
  V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining: int;
  V81_rlt_eval_microwave_mode_logic_rlt_fired_1: bool;
  V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root: int;
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root: int;
  V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode: int;
  V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root: int;
  V86_chart_microwave_mode_logic_rlt_evtInitStep: bool;
  V87_chart_microwave_mode_logic_begin_state_states___root: int;
  V88_chart_microwave_mode_logic_begin_state_outports_mode: int;
  V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining: int;
  V90_chart_microwave_mode_logic_final_state_states___root: int;
  V92_chart_microwave_mode_logic_steps_remaining: int;
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT: int;
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT: int;
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER: int;
  V96_microwave_microwave_mode_logic_mode: int;
  V97_MWI_FcnMaxI_In16: int;
  V98_MWI_FcnMaxI_In15: int;
  V99_MWI_FcnMaxI_In13: int;
  V100_MWI_FcnMaxI_In12: int;
  V101_MWI_FcnMaxI_In11: int;
  V102_MWI_FcnMaxI_In1: int;
  V103_p3: bool;
  V104_p4: bool;
  V105_p5: bool;
  V106_p6: bool;
  V107_p7: bool;
  V108_p8: bool;
  V109_p9: bool;
  V110_p10: bool;
  V111_p11: bool;
  V112_p12: bool;
  V113_p13: bool;
  V114_p14: bool;
  V115_p15: bool;
  V116_p16: bool;
  V117_p17: bool;
  V118_p18: bool;
  V119_p19: bool;
  V120_p20: bool;
  V121_p21: bool;
  V122_p22: bool;
  V123_p23: bool;
  V124_p24: bool;
  V125_p25: bool;
  V126_p26: bool;
  V127_p27: bool;
  V128_p28: bool;
  V129_p29: bool;
  V130_p30: bool;
  V131_p31: bool;
  V132_p32: bool;
  V133_p33: bool;
  V134_p34: bool;
  V135_p35: bool;
  V136_p36: bool;
  V137_p37: bool;
  V138_rltTruncByConv2: bool;
  V139_rltTruncByConv1: bool;
  V140_rltTruncByConv: bool;

let
  OK = (((V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root >= 1) 
  and (V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root <= 3)) or (
  V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root = 4));
  V17_SETUP = (if (1 = V96_microwave_microwave_mode_logic_mode) then true else 
  false);
  V18_COOKING = (if (2 = V96_microwave_microwave_mode_logic_mode) then true 
  else false);
  V19_SUSPENDED = (if (3 = V96_microwave_microwave_mode_logic_mode) then true 
  else false);
  V20_START_PRESSED = (KP_START -> (KP_START and (not (pre KP_START))));
  V21_CLEAR_PRESSED = (KP_CLEAR -> (KP_CLEAR and (not (pre KP_CLEAR))));
  V25_STEPS_TO_COOK = ((if (
  V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and 
  (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) 
  then 0 else ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (
  V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY 
  * 60)) * 1)) -> (if (
  V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and 
  (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) 
  then 0 else (if 
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (((
  (V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (
  V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY 
  * 60)) * 1) else (pre V25_STEPS_TO_COOK))));
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock = (true 
  -> (if (1 = (pre V96_microwave_microwave_mode_logic_mode)) then true else 
  false));
  V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step = (
  true -> (if (not 
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then 
  true else (if (pre 
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then 
  false else (pre 
  V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step))));
  V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY 
  = (0 -> (if 
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if 
  V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 
  0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 
  0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre 
  KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and 
  (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if 
  (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 
  7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre 
  KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) 
  else (pre 
  V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY
  )))) else (pre 
  V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY
  )));
  V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY = (0 -> (if 
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if 
  V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 
  0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 
  0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre 
  KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and 
  (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if 
  (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 
  7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre 
  KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else 
  (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)));
  V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY = ((if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 
  else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 
  then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else 
  (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 
  then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else 
  (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 
  7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) -> (if 
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if 
  V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 
  (if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else 
  (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 
  5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if 
  KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 
  0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if 
  KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 
  else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) else (if 
  KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if 
  (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 
  2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre 
  KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and 
  (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if 
  (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 
  9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre 
  KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and 
  (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if 
  (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 
  5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre 
  KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and 
  (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)));
  V41_rlt__Arrow5 = (639 -> (if (not (not V17_SETUP)) then (if (
  V99_MWI_FcnMaxI_In13 > 0) then V99_MWI_FcnMaxI_In13 else 0) else 639));
  V42_rlt__Arrow4 = (639 -> (if (not V19_SUSPENDED) then (if (
  V100_MWI_FcnMaxI_In12 > 0) then V100_MWI_FcnMaxI_In12 else 0) else 639));
  V43_rlt__Arrow3 = (639 -> (if (not (not V18_COOKING)) then (if (
  V97_MWI_FcnMaxI_In16 > 0) then V97_MWI_FcnMaxI_In16 else 0) else 639));
  V44_rlt__Arrow2 = (639 -> (if (not (not V19_SUSPENDED)) then (if (
  V98_MWI_FcnMaxI_In15 > 0) then V98_MWI_FcnMaxI_In15 else 0) else 639));
  V45_rlt__Arrow1 = (639 -> (if (not V18_COOKING) then (if (
  V101_MWI_FcnMaxI_In11 > 0) then V101_MWI_FcnMaxI_In11 else 0) else 639));
  V46_rlt__Arrow = (639 -> (if (not V17_SETUP) then (if (V102_MWI_FcnMaxI_In1 > 
  0) then V102_MWI_FcnMaxI_In1 else 0) else 639));
  V47_chart_microwave_mode_logic_start = (if (V20_START_PRESSED = false) then 0 
  else 1);
  V48_chart_microwave_mode_logic_clear_off = (if (V21_CLEAR_PRESSED = false) 
  then 0 else 1);
  V49_chart_microwave_mode_logic_door_closed = (if (DOOR_CLOSED = false) then 0 
  else 1);
  V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 = (((
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (
  V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) 
  and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2));
  V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = (if 
  V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if ((
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 
  else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) else 
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root);
  V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = (if 
  V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if (not (
  V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 4 
  else V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root) else 
  V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root);
  V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 = ((
  V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) and (((if 
  (V47_chart_microwave_mode_logic_start <> 0) then true else false) and (if (
  V49_chart_microwave_mode_logic_door_closed <> 0) then true else false)) and 
  (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)));
  V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 = (
  V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 or 
  V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1);
  V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = (if 
  V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (
  V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) then 1 
  else V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) else 
  V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root);
  V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode = (if 
  V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if (not (
  V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 
  else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) else 
  V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode);
  V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = (if 
  V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (
  V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 
  else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else 
  V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root);
  V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode = (if 
  V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (
  V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 
  else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) else 
  V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode);
  V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 = (((
  V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if 
  (V48_chart_microwave_mode_logic_clear_off <> 0) then true else false) and 
  (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((
  V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not 
  V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)));
  V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 = (
  V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 or 
  V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1);
  V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = (if 
  V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if ((
  V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (
  V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 
  else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) else 
  V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root);
  V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining = 
  (if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then 0 else 
  V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining);
  V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = (if 
  V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (
  V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 
  else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) else 
  V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root);
  V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 = ((
  V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2) and ((
  V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0
  ) and (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)));
  V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode = (if 
  V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (
  V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 1 
  else V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode) else 
  V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode);
  V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = (if 
  V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (
  V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2) then 1 
  else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root) else 
  V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root);
  V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = (if 
  V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (not (
  V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 
  else V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root) else 
  V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root);
  V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 = ((
  V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) and ((
  (if (V48_chart_microwave_mode_logic_clear_off <> 0) then true else false) or 
  (not (if (V49_chart_microwave_mode_logic_door_closed <> 0) then true else 
  false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or 
  V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))));
  V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = (if 
  V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (
  V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) then 1 
  else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root) else 
  V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root);
  V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode = (if 
  V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (not (
  V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 
  else V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode) else 
  V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode);
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = (if (not ((
  V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (
  V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 
  else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root);
  V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 = ((not ((
  V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (
  V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)));
  V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 = (
  V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)) and 
  (if (V49_chart_microwave_mode_logic_door_closed <> 0) then true else false)))
  ;
  V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = (if 
  V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 
  else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) else 
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root);
  V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode = (if 
  V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (
  V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 
  else V88_chart_microwave_mode_logic_begin_state_outports_mode) else 
  V88_chart_microwave_mode_logic_begin_state_outports_mode);
  V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 = (
  V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((
  V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (
  V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and 
  (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1)));
  V78_rlt_enter_microwave_mode_logic_ON_rlt_state_4_states___root = (if 
  V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (
  V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 
  else V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root) else 
  V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root);
  V79_rlt_eval_microwave_mode_logic_rlt_fired_0 = (
  V87_chart_microwave_mode_logic_begin_state_states___root = 4);
  V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining = (if 
  V79_rlt_eval_microwave_mode_logic_rlt_fired_0 then V25_STEPS_TO_COOK else 
  V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining);
  V81_rlt_eval_microwave_mode_logic_rlt_fired_1 = (
  V79_rlt_eval_microwave_mode_logic_rlt_fired_0 and ((
  V87_chart_microwave_mode_logic_begin_state_states___root = 4) and ((if (
  V47_chart_microwave_mode_logic_start <> 0) then true else false) and (if ((if 
  ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) <> 0) then true else false))
  ));
  V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root = (if 
  V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if (
  V87_chart_microwave_mode_logic_begin_state_states___root = 4) then 0 else 
  V87_chart_microwave_mode_logic_begin_state_states___root) else 
  V87_chart_microwave_mode_logic_begin_state_states___root);
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = (if 
  V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then 
  V78_rlt_enter_microwave_mode_logic_ON_rlt_state_4_states___root else 
  V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root);
  V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode = (if 
  V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if 
  V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (
  V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 
  else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else 
  V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else 
  V88_chart_microwave_mode_logic_begin_state_outports_mode);
  V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root = (if (not (
  V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 4 else 
  V87_chart_microwave_mode_logic_begin_state_states___root);
  V86_chart_microwave_mode_logic_rlt_evtInitStep = (true -> (if (pre true) then 
  false else (pre V86_chart_microwave_mode_logic_rlt_evtInitStep)));
  V87_chart_microwave_mode_logic_begin_state_states___root = (0 -> (pre 
  V90_chart_microwave_mode_logic_final_state_states___root));
  V88_chart_microwave_mode_logic_begin_state_outports_mode = (0 -> (pre 
  V96_microwave_microwave_mode_logic_mode));
  V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining = (0 -> 
  (pre V92_chart_microwave_mode_logic_steps_remaining));
  V90_chart_microwave_mode_logic_final_state_states___root = (if 
  V86_chart_microwave_mode_logic_rlt_evtInitStep then 
  V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not 
  V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if 
  V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (
  V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 
  else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else 
  V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else 
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root));
  V92_chart_microwave_mode_logic_steps_remaining = (if 
  V86_chart_microwave_mode_logic_rlt_evtInitStep then 
  V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining else (if 
  ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if 
  V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (
  V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1
  ) else 
  V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) 
  else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining))
  ;
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT = ((
  V92_chart_microwave_mode_logic_steps_remaining div 1) div 60);
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT = (((
  V92_chart_microwave_mode_logic_steps_remaining div 1) - (((
  V92_chart_microwave_mode_logic_steps_remaining div 1) div 60) * 60)) div 10);
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = (((
  V92_chart_microwave_mode_logic_steps_remaining div 1) - (((
  V92_chart_microwave_mode_logic_steps_remaining div 1) div 60) * 60)) - ((((
  V92_chart_microwave_mode_logic_steps_remaining div 1) - (((
  V92_chart_microwave_mode_logic_steps_remaining div 1) div 60) * 60)) div 10) 
  * 10));
  V96_microwave_microwave_mode_logic_mode = (if 
  V86_chart_microwave_mode_logic_rlt_evtInitStep then (if (not (
  V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else 
  V88_chart_microwave_mode_logic_begin_state_outports_mode) else (if ((not 
  V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (
  V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if 
  V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (
  V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 
  else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else 
  V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else 
  V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode));
  V97_MWI_FcnMaxI_In16 = ((pre V43_rlt__Arrow3) - 1);
  V98_MWI_FcnMaxI_In15 = ((pre V44_rlt__Arrow2) - 1);
  V99_MWI_FcnMaxI_In13 = ((pre V41_rlt__Arrow5) - 1);
  V100_MWI_FcnMaxI_In12 = ((pre V42_rlt__Arrow4) - 1);
  V101_MWI_FcnMaxI_In11 = ((pre V45_rlt__Arrow1) - 1);
  V102_MWI_FcnMaxI_In1 = ((pre V46_rlt__Arrow) - 1);
  V103_p3 = (true -> ((if (not V17_SETUP) then (if (V102_MWI_FcnMaxI_In1 > 0) 
  then V102_MWI_FcnMaxI_In1 else 0) else 639) > 0));
  V104_p4 = (true -> ((if (not V18_COOKING) then (if (V101_MWI_FcnMaxI_In11 > 0
  ) then V101_MWI_FcnMaxI_In11 else 0) else 639) > 0));
  V105_p5 = (true -> ((if (not V19_SUSPENDED) then (if (V100_MWI_FcnMaxI_In12 > 
  0) then V100_MWI_FcnMaxI_In12 else 0) else 639) > 0));
  V106_p6 = (true -> ((not V17_SETUP) or ((if (not (not V17_SETUP)) then (if (
  V99_MWI_FcnMaxI_In13 > 0) then V99_MWI_FcnMaxI_In13 else 0) else 639) > 0)));
  V107_p7 = (true -> ((not V18_COOKING) or ((if (not (not V18_COOKING)) then 
  (if (V97_MWI_FcnMaxI_In16 > 0) then V97_MWI_FcnMaxI_In16 else 0) else 639) > 
  0)));
  V108_p8 = (true -> ((not V19_SUSPENDED) or ((if (not (not V19_SUSPENDED)) 
  then (if (V98_MWI_FcnMaxI_In15 > 0) then V98_MWI_FcnMaxI_In15 else 0) else 
  639) > 0)));
  V109_p9 = (true -> ((not V18_COOKING) or DOOR_CLOSED));
  V110_p10 = (true -> ((not V18_COOKING) or ((if (not (not V18_COOKING)) then 
  (if (V97_MWI_FcnMaxI_In16 > 0) then V97_MWI_FcnMaxI_In16 else 0) else 639) > 
  0)));
  V111_p11 = ((not KP_CLEAR) or (not V18_COOKING));
  V112_p12 = (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock or (
  V25_STEPS_TO_COOK = 0));
  V113_p13 = ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and 
  KP_CLEAR)) or (V25_STEPS_TO_COOK = 0));
  V114_p14 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or (V25_STEPS_TO_COOK = (((
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER + (
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT * 10)) + (
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT * 60)) * 
  1))));
  V115_p15 = (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock or (
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT = 0));
  V116_p16 = ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and 
  KP_CLEAR)) or (
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT = 0));
  V117_p17 = (((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not (((((((((KP_1 or KP_2) or KP_3) or KP_4) or KP_5) or 
  KP_6) or KP_7) or KP_8) or KP_9) or KP_0)) or (
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT = 0))) 
  -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((((((((((KP_1 and (not (pre KP_1))) or (KP_2 and (not 
  (pre KP_2)))) or (KP_3 and (not (pre KP_3)))) or (KP_4 and (not (pre KP_4)))) 
  or (KP_5 and (not (pre KP_5)))) or (KP_6 and (not (pre KP_6)))) or (KP_7 and 
  (not (pre KP_7)))) or (KP_8 and (not (pre KP_8)))) or (KP_9 and (not (pre 
  KP_9)))) or (KP_0 and (not (pre KP_0))))) or (
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT = (pre 
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT)))));
  V118_p18 = (((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not (((((((((KP_1 or KP_2) or KP_3) or KP_4) or KP_5) or 
  KP_6) or KP_7) or KP_8) or KP_9) or KP_0)) or (
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT = ((
  V25_STEPS_TO_COOK div 1) div 60)))) -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((((((((((KP_1 and (not (pre KP_1))) or (KP_2 and (not 
  (pre KP_2)))) or (KP_3 and (not (pre KP_3)))) or (KP_4 and (not (pre KP_4)))) 
  or (KP_5 and (not (pre KP_5)))) or (KP_6 and (not (pre KP_6)))) or (KP_7 and 
  (not (pre KP_7)))) or (KP_8 and (not (pre KP_8)))) or (KP_9 and (not (pre 
  KP_9)))) or (KP_0 and (not (pre KP_0))))) or (
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT = ((
  V25_STEPS_TO_COOK div 1) div 60)))));
  V119_p19 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or (((((((((((KP_1 and (not (pre KP_1))) or (KP_2 and (not (pre 
  KP_2)))) or (KP_3 and (not (pre KP_3)))) or (KP_4 and (not (pre KP_4)))) or (
  KP_5 and (not (pre KP_5)))) or (KP_6 and (not (pre KP_6)))) or (KP_7 and (not 
  (pre KP_7)))) or (KP_8 and (not (pre KP_8)))) or (KP_9 and (not (pre KP_9)))) 
  or (KP_0 and (not (pre KP_0)))) or (
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT = (pre 
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT)))));
  V120_p20 = (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock or (
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT = 0));
  V121_p21 = ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and 
  KP_CLEAR)) or (
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT = 0));
  V122_p22 = (true -> (((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or (not ((((((((((KP_1 and (not (pre KP_1))) or (KP_2 and (not 
  (pre KP_2)))) or (KP_3 and (not (pre KP_3)))) or (KP_4 and (not (pre KP_4)))) 
  or (KP_5 and (not (pre KP_5)))) or (KP_6 and (not (pre KP_6)))) or (KP_7 and 
  (not (pre KP_7)))) or (KP_8 and (not (pre KP_8)))) or (KP_9 and (not (pre 
  KP_9)))) or (KP_0 and (not (pre KP_0)))))) or (
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT = (pre 
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER))));
  V123_p23 = (true -> (((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or (not ((((((((((KP_1 and (not (pre KP_1))) or (KP_2 and (not 
  (pre KP_2)))) or (KP_3 and (not (pre KP_3)))) or (KP_4 and (not (pre KP_4)))) 
  or (KP_5 and (not (pre KP_5)))) or (KP_6 and (not (pre KP_6)))) or (KP_7 and 
  (not (pre KP_7)))) or (KP_8 and (not (pre KP_8)))) or (KP_9 and (not (pre 
  KP_9)))) or (KP_0 and (not (pre KP_0)))))) or (
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT = ((
  V25_STEPS_TO_COOK - ((V25_STEPS_TO_COOK div 60) * 60)) div 10))));
  V124_p24 = (true -> (((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((((((((((KP_1 and (not (pre KP_1))) or (KP_2 and (not (pre 
  KP_2)))) or (KP_3 and (not (pre KP_3)))) or (KP_4 and (not (pre KP_4)))) or (
  KP_5 and (not (pre KP_5)))) or (KP_6 and (not (pre KP_6)))) or (KP_7 and (not 
  (pre KP_7)))) or (KP_8 and (not (pre KP_8)))) or (KP_9 and (not (pre KP_9)))) 
  or (KP_0 and (not (pre KP_0))))) or (
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT = (pre 
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT))));
  V125_p25 = (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 0));
  V126_p26 = ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and 
  KP_CLEAR)) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 0));
  V127_p27 = (((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not KP_0) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 0))) -> 
  ((not (V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock 
  and (not KP_CLEAR))) or ((not (KP_0 and (not (pre KP_0)))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 0))));
  V128_p28 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_1 and (not (pre KP_1))) and (not (KP_0 and (not 
  (pre KP_0)))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 1))));
  V129_p29 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_2 and (not (pre KP_2))) and ((not (KP_1 and (not 
  (pre KP_1)))) and (not (KP_0 and (not (pre KP_0))))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 2))));
  V130_p30 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_3 and (not (pre KP_3))) and ((not (KP_2 and (not 
  (pre KP_2)))) and ((not (KP_1 and (not (pre KP_1)))) and (not (KP_0 and (not 
  (pre KP_0)))))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 3))));
  V131_p31 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_4 and (not (pre KP_4))) and ((not (KP_3 and (not 
  (pre KP_3)))) and ((not (KP_2 and (not (pre KP_2)))) and ((not (KP_1 and (not 
  (pre KP_1)))) and (not (KP_0 and (not (pre KP_0))))))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 4))));
  V132_p32 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_5 and (not (pre KP_5))) and ((not (KP_4 and (not 
  (pre KP_4)))) and ((not (KP_3 and (not (pre KP_3)))) and ((not (KP_2 and (not 
  (pre KP_2)))) and ((not (KP_1 and (not (pre KP_1)))) and (not (KP_0 and (not 
  (pre KP_0)))))))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 5))));
  V133_p33 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_6 and (not (pre KP_6))) and ((not (KP_5 and (not 
  (pre KP_5)))) and ((not (KP_4 and (not (pre KP_4)))) and ((not (KP_3 and (not 
  (pre KP_3)))) and ((not (KP_2 and (not (pre KP_2)))) and ((not (KP_1 and (not 
  (pre KP_1)))) and (not (KP_0 and (not (pre KP_0))))))))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 6))));
  V134_p34 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_7 and (not (pre KP_7))) and ((not (KP_6 and (not 
  (pre KP_6)))) and ((not (KP_5 and (not (pre KP_5)))) and ((not (KP_4 and (not 
  (pre KP_4)))) and ((not (KP_3 and (not (pre KP_3)))) and ((not (KP_2 and (not 
  (pre KP_2)))) and ((not (KP_1 and (not (pre KP_1)))) and (not (KP_0 and (not 
  (pre KP_0)))))))))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 7))));
  V135_p35 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_8 and (not (pre KP_8))) and ((not (KP_7 and (not 
  (pre KP_7)))) and ((not (KP_6 and (not (pre KP_6)))) and ((not (KP_5 and (not 
  (pre KP_5)))) and ((not (KP_4 and (not (pre KP_4)))) and ((not (KP_3 and (not 
  (pre KP_3)))) and ((not (KP_2 and (not (pre KP_2)))) and ((not (KP_1 and (not 
  (pre KP_1)))) and (not (KP_0 and (not (pre KP_0))))))))))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 8))));
  V136_p36 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or ((not ((KP_9 and (not (pre KP_9))) and ((not (KP_8 and (not 
  (pre KP_8)))) and ((not (KP_7 and (not (pre KP_7)))) and ((not (KP_6 and (not 
  (pre KP_6)))) and ((not (KP_5 and (not (pre KP_5)))) and ((not (KP_4 and (not 
  (pre KP_4)))) and ((not (KP_3 and (not (pre KP_3)))) and ((not (KP_2 and (not 
  (pre KP_2)))) and ((not (KP_1 and (not (pre KP_1)))) and (not (KP_0 and (not 
  (pre KP_0)))))))))))))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = 9))));
  V137_p37 = (true -> ((not (
  V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock and (not 
  KP_CLEAR))) or (((((((((((KP_1 and (not (pre KP_1))) or (KP_2 and (not (pre 
  KP_2)))) or (KP_3 and (not (pre KP_3)))) or (KP_4 and (not (pre KP_4)))) or (
  KP_5 and (not (pre KP_5)))) or (KP_6 and (not (pre KP_6)))) or (KP_7 and (not 
  (pre KP_7)))) or (KP_8 and (not (pre KP_8)))) or (KP_9 and (not (pre KP_9)))) 
  or (KP_0 and (not (pre KP_0)))) or (
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER = (pre 
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER)))));
  V138_rltTruncByConv2 = ((
  V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER >= 0) and 
  (V95_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__REMAINDER <= 256));
  V139_rltTruncByConv1 = ((
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT >= 0) and (
  V94_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_TENS__QUOTIENT <= 256));
  V140_rltTruncByConv = ((
  V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT >= 0) 
  and (V93_microwave_microwave_TIME_ON_DISPLAY_SECONDS_TO_MINUTES__QUOTIENT <= 
  256));
  --%PROPERTY OK=true;



-- 1057 implications. 
assert (true -> (((V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root = 4) = ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3))) 
and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) = (V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root >= 1)) 
and ((V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root >= 1) = true) 
and (true = ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3))) 
and (((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)) = (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3) = (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1)) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) = (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1)) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) = (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3) = (((V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root <= 3)) or (V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root = 4))) 
and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) = (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1)) 
and (((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3))) = V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0) 
and (V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 = (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3)))) 
and ((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) = V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) 
and ((V87_chart_microwave_mode_logic_begin_state_states___root = 4) = V79_rlt_eval_microwave_mode_logic_rlt_fired_0) 
and ((not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) = (V25_STEPS_TO_COOK > 0)) 
and ((((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) = (not (V49_chart_microwave_mode_logic_door_closed = 0))) 
and ((not (V49_chart_microwave_mode_logic_door_closed = 0)) = DOOR_CLOSED) 
and (V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 = (V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)))) 
and ((((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1)) = (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1)) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) = V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2) 
and (V20_START_PRESSED = (not (V47_chart_microwave_mode_logic_start = 0))) 
and (V21_CLEAR_PRESSED = (not (V48_chart_microwave_mode_logic_clear_off = 0))) 
and ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3) = (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) 
and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3) = (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4))) 
and ((not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) = (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) 
and (V81_rlt_eval_microwave_mode_logic_rlt_fired_1 = ((V87_chart_microwave_mode_logic_begin_state_states___root = 4) and ((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)))) 
and (((V87_chart_microwave_mode_logic_begin_state_states___root = 4) and ((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false))) = (V79_rlt_eval_microwave_mode_logic_rlt_fired_0 and ((V87_chart_microwave_mode_logic_begin_state_states___root = 4) and ((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false))))) 
and ((V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) = (V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2)) 
and ((V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2) = V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5) 
and (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 = ((V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2) and ((V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0) and (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)))) 
and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) = ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) 
and (((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) = (V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock))) 
and ((V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) = (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) 
and ((not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) = ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 = (V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 or V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) = ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)))) 
and (((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) = V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 = (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 or V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) = V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1) 
and (V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 = (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2))) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 = ((V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) and (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)))) 
and (((V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) and (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1))) = (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) 
and (false = (if true then false else (pre V86_chart_microwave_mode_logic_rlt_evtInitStep))) 
and ((if true then false else (pre V86_chart_microwave_mode_logic_rlt_evtInitStep)) = (V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root <= 3)) 
and ((V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root <= 3) = ((V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) and (((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))))) 
and (((V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) and (((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)))) = V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6) 
and (V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 = ((V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root <= 3))) 
and (V81_rlt_eval_microwave_mode_logic_rlt_fired_1 => (1 = (pre V96_microwave_microwave_mode_logic_mode))) 
and (V81_rlt_eval_microwave_mode_logic_rlt_fired_1 => ((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false))) 
and ((1 = (pre V96_microwave_microwave_mode_logic_mode)) => ((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)))) 
and ((V87_chart_microwave_mode_logic_begin_state_states___root = 4) => (1 = (pre V96_microwave_microwave_mode_logic_mode))) 
and ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) => (not V81_rlt_eval_microwave_mode_logic_rlt_fired_1)) 
and ((KP_START and (not (pre KP_START))) => V20_START_PRESSED) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3)) 
and (((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) => (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4))) 
and ((if (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then true else (if (pre V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then false else (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step))) => V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step) 
and (((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) => (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) 
and (((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) => ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) 
and (((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) => (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4))) 
and ((not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1) => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and (((V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0) and (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) => (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0)) 
and ((V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2) => (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2)) 
and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) => (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1) 
and ((pre V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and (((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) => ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) 
and ((not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3)) 
and (((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and (((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) => (if (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then true else (if (pre V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then false else (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step)))) 
and ((not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) => V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2)) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => (if (pre V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then false else (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step))) 
and ((not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((pre V86_chart_microwave_mode_logic_rlt_evtInitStep) => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and ((pre V86_chart_microwave_mode_logic_rlt_evtInitStep) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((pre V86_chart_microwave_mode_logic_rlt_evtInitStep) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((pre V86_chart_microwave_mode_logic_rlt_evtInitStep) => (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step)) 
and ((V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4) => (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) 
and ((((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) and (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) => ((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) 
and (((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) => ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) 
and ((not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3)) 
and ((V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2) => (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2)) 
and ((V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) => (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (KP_START and (not (pre KP_START)))) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => ((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) => (V49_chart_microwave_mode_logic_door_closed = 0)) 
and ((not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and (((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3))) => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and (((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3))) => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1)) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3))) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (not (pre KP_CLEAR))) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)))) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0)) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2)) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)))) 
and ((if (pre V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then false else (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step)) => (if (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then true else (if (pre V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then false else (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step)))) 
and ((not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and ((((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and ((((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) => ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)))) 
and ((V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) => ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3))) 
and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) => (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3)) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not V81_rlt_eval_microwave_mode_logic_rlt_fired_1)) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)))) 
and (((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3))) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and (((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3))) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4) => (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) 
and ((V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4) => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and ((V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4) => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1)) 
and ((not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) => (V48_chart_microwave_mode_logic_clear_off = 0)) 
and (V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and (V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and (V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and (V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and (V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 => (((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) => (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) 
and ((V49_chart_microwave_mode_logic_door_closed = 0) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((V49_chart_microwave_mode_logic_door_closed = 0) => (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) 
and ((V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0) => (not V81_rlt_eval_microwave_mode_logic_rlt_fired_1)) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and (V81_rlt_eval_microwave_mode_logic_rlt_fired_1 => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => (V48_chart_microwave_mode_logic_clear_off = 0)) 
and (V81_rlt_eval_microwave_mode_logic_rlt_fired_1 => ((V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0) and (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) 
and (V81_rlt_eval_microwave_mode_logic_rlt_fired_1 => ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3))) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4))) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1)) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3)) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)))) 
and ((pre V86_chart_microwave_mode_logic_rlt_evtInitStep) => (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) 
and ((KP_4 and (not (pre KP_4))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and ((KP_4 and (not (pre KP_4))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_4 and (not (pre KP_4))) => (not (pre KP_4))) 
and ((KP_6 and (not (pre KP_6))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and ((KP_6 and (not (pre KP_6))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_6 and (not (pre KP_6))) => (not (pre KP_6))) 
and ((KP_5 and (not (pre KP_5))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and ((KP_5 and (not (pre KP_5))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_5 and (not (pre KP_5))) => (not (pre KP_5))) 
and ((KP_2 and (not (pre KP_2))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and ((KP_2 and (not (pre KP_2))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_2 and (not (pre KP_2))) => (not (pre KP_2))) 
and ((KP_9 and (not (pre KP_9))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and ((KP_9 and (not (pre KP_9))) => KP_9) 
and (KP_4 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_3 and (not (pre KP_3))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_3 and (not (pre KP_3))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and ((KP_3 and (not (pre KP_3))) => (not (pre KP_3))) 
and ((KP_1 and (not (pre KP_1))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and ((KP_1 and (not (pre KP_1))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_1 and (not (pre KP_1))) => (not (pre KP_1))) 
and ((pre KP_START) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((pre KP_START) => (not V81_rlt_eval_microwave_mode_logic_rlt_fired_1)) 
and ((KP_START and (not (pre KP_START))) => (not (pre KP_START))) 
and ((KP_2 and (not (pre KP_2))) => KP_2) 
and (KP_2 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4) => (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) 
and ((V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4) => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((KP_3 and (not (pre KP_3))) => KP_3) 
and ((V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2) => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and ((V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) => ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) 
and ((V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2) => ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => ((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)))) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step)) 
and ((if (pre V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock) then false else (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step)) => (pre V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step)) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)))) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4))) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => KP_START) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3))) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) 
and ((((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1))) => ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3))) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) 
and ((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) => ((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)))) 
and ((V73_rlt_enter_microwave_mode_logic_ON_rlt_fired_0 and (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) => (((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)))) 
and ((V49_chart_microwave_mode_logic_door_closed = 0) => ((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)))) 
and (V81_rlt_eval_microwave_mode_logic_rlt_fired_1 => (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => ((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)))) 
and (((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4) => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and ((not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((V47_chart_microwave_mode_logic_start = 0) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and (V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 => (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) and (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1))) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2)) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and ((V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2))) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => (V48_chart_microwave_mode_logic_clear_off = 0)) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => ((V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0) and (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) 
and ((V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3))) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1)) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1)) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1)) 
and (((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) => (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1)) 
and ((not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) => (not V81_rlt_eval_microwave_mode_logic_rlt_fired_1)) 
and ((V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3) => (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) 
and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root = 3) => (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2))) 
and ((V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and ((V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) => (((V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root >= 1) and (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root <= 3)) and (not V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1))) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) 
and (((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = 2) and (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) => (V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0)) 
and (V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1 => ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) 
and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2) => ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) 
and (V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2 => ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) => V20_START_PRESSED) 
and (KP_3 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and (KP_7 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and (KP_9 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_9 and (not (pre KP_9))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_9 and (not (pre KP_9))) => (not (pre KP_9))) 
and ((KP_7 and (not (pre KP_7))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_7 and (not (pre KP_7))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and (KP_8 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_0 and (not (pre KP_0))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and ((KP_0 and (not (pre KP_0))) => KP_0) 
and (V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 => ((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)))) 
and ((V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0) => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and ((V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0) => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and ((V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining <= 0) => (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2))) 
and (((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0) => (not V81_rlt_eval_microwave_mode_logic_rlt_fired_1)) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0))) 
and ((((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) and (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and ((V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2) => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and ((KP_8 and (not (pre KP_8))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_8 and (not (pre KP_8))) => (not (pre KP_8))) 
and (KP_5 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and (V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and ((V47_chart_microwave_mode_logic_start = 0) => (not V81_rlt_eval_microwave_mode_logic_rlt_fired_1)) 
and ((not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) => ((not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) and ((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)))) 
and (((V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0) and (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) => (not V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2)) 
and ((V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0) => (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1)) 
and ((V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining > 0) => (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) then true else false)) => KP_START) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) => KP_START) 
and ((KP_8 and (not (pre KP_8))) => ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9)) 
and (V86_chart_microwave_mode_logic_rlt_evtInitStep => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and ((KP_6 and (not (pre KP_6))) => KP_6) 
and (KP_6 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and (((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_7 and (not (pre KP_7))) => (not (pre KP_7))) 
and ((KP_8 and (not (pre KP_8))) => KP_8) 
and ((pre KP_CLEAR) => (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3))) 
and (KP_1 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and ((KP_0 and (not (pre KP_0))) => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and (KP_0 => ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9)) 
and (((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) and (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) => (not V55_rlt_eval_microwave_mode_logic_ON_rlt_complete_1)) 
and ((KP_CLEAR and (not (pre KP_CLEAR))) => (not (pre KP_CLEAR))) 
and (KP_CLEAR => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and (KP_CLEAR => (not V81_rlt_eval_microwave_mode_logic_rlt_fired_1)) 
and (KP_CLEAR => ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) = 0)) 
and ((KP_7 and (not (pre KP_7))) => KP_7) 
and ((KP_5 and (not (pre KP_5))) => KP_5) 
and ((KP_4 and (not (pre KP_4))) => KP_4) 
and ((KP_0 and (not (pre KP_0))) => (not (pre KP_0))) 
and ((((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) and (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) => (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3))) 
and ((((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) and (not V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1)) => (((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) 
and (((if (not (V47_chart_microwave_mode_logic_start = 0)) then true else false) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false)) => (((V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root >= 1) and (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root <= 3)) and (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) 
and ((KP_1 and (not (pre KP_1))) => KP_1) 
and (V20_START_PRESSED => KP_START) 
and ((((if (not (V48_chart_microwave_mode_logic_clear_off = 0)) then true else false) or (not (if (not (V49_chart_microwave_mode_logic_door_closed = 0)) then true else false))) and (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) => (not (V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 or V61_rlt_eval_microwave_mode_logic_ON_rlt_complete_2))) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) = V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY) 
and (V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY = (if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then (if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY))) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then (if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)) = (V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1)) 
and (V48_chart_microwave_mode_logic_clear_off = (if (V21_CLEAR_PRESSED = false) then 0 else 1)) 
and ((if (V20_START_PRESSED = false) then 0 else 1) = V47_chart_microwave_mode_logic_start) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)) = V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) 
and ((if (DOOR_CLOSED = false) then 0 else 1) = V49_chart_microwave_mode_logic_door_closed) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) = 1) 
and (1 = (if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else V88_chart_microwave_mode_logic_begin_state_outports_mode)) 
and ((if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else V88_chart_microwave_mode_logic_begin_state_outports_mode) = (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 1 else V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode)) 
and ((if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) = V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) = (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 else V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode) else V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode)) 
and ((if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 else V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode) else V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode) = V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode) 
and (V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode = (if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 1 else V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode) else V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode)) 
and ((if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 1 else V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode) else V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode) = (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) 
and ((if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) = V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) = V59_rlt_eval_microwave_mode_logic_ON_rlt_state_4_outports_mode) 
and (V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode = (if V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) 
and ((if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode) = V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) 
and (V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode = (if V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode)) 
and ((if V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) = V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) = (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root)) 
and ((if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) = (if (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 else V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root)) 
and ((if (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 else V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root) = (if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root)) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) = (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode)) 
and ((if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) = 2) 
and (2 = (if (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 else V66_rlt_eval_microwave_mode_logic_ON_rlt_state_8_outports_mode)) 
and ((if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) = V78_rlt_enter_microwave_mode_logic_ON_rlt_state_4_states___root) 
and (V78_rlt_enter_microwave_mode_logic_ON_rlt_state_4_states___root = (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root) else V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) = (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode)) 
and ((if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) = 3) 
and (3 = (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root)) 
and ((if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root) = (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root)) 
and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root = (if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if (V87_chart_microwave_mode_logic_begin_state_states___root = 4) then 0 else V87_chart_microwave_mode_logic_begin_state_states___root) else V87_chart_microwave_mode_logic_begin_state_states___root)) 
and ((if (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) then 1 else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root) = (if (V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2) then 1 else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root)) 
and ((if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2) then 1 else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root) else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root) = V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root) 
and (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = (if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root)) 
and ((if V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) = V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root) 
and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root = (if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then V78_rlt_enter_microwave_mode_logic_ON_rlt_state_4_states___root else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root)) 
and (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = (if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) then 1 else V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) else V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root)) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) = V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) 
and (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = (if V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 4 else V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root) else V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root)) 
and ((if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) = V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root) 
and (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 else V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root) else V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root)) 
and ((if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (not (V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root = 2)) then 2 else V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root) else V67_rlt_eval_microwave_mode_logic_ON_rlt_state_9_states___root) = (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root)) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) = (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) then 1 else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root) else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root)) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) then 1 else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root) else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root) = V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root) 
and (V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root)) 
and ((if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) = V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) 
and (4 = (if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 4 else V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root)) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 4 else V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root) = (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root)) 
and ((if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) = V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root) 
and (V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root = (if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 4 else V87_chart_microwave_mode_logic_begin_state_states___root)) 
and ((if (V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) then 0 else (if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK))) = V25_STEPS_TO_COOK) 
and ((if V86_chart_microwave_mode_logic_rlt_evtInitStep then V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining)) = (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining)) 
and ((if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then 0 else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining) = V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) 
and ((if V79_rlt_eval_microwave_mode_logic_rlt_fired_0 then V25_STEPS_TO_COOK else V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining) = V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining) 
and (((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) = (((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60))) 
and (0 <=(if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY))))) 
and (0 <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY))) 
and (0 <=(V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) 
and (0 <=(if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) 
and (0 <=(if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY))) 
and (0 <=(pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)) 
and (0 <=(if (V87_chart_microwave_mode_logic_begin_state_states___root = 4) then 0 else V87_chart_microwave_mode_logic_begin_state_states___root)) 
and (0 <=V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining) 
and (0 <=(pre V92_chart_microwave_mode_logic_steps_remaining)) 
and (0 <=(if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then (if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY))))) 
and (0 <=V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) 
and (0 <=(if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)))) 
and (0 <=(if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0))) 
and (0 <=V48_chart_microwave_mode_logic_clear_off) 
and (0 <=(if (V20_START_PRESSED = false) then 0 else 1)) 
and (0 <=(if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) 
and (0 <=(if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))))) 
and (0 <=(if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY))) 
and (0 <=(if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))))) 
and (0 <=(if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY))))) 
and (0 <=(if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) 
and (0 <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY))) 
and (0 <=(if (DOOR_CLOSED = false) then 0 else 1)) 
and (0 <=(if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1)) 
and (0 <=(if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY))) 
and (0 <=(pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)) 
and (0 <=(pre V25_STEPS_TO_COOK)) 
and (0 <=(if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) 
and (0 <=V88_chart_microwave_mode_logic_begin_state_outports_mode) 
and (0 <=(if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root)) 
and (0 <=(pre V96_microwave_microwave_mode_logic_mode)) 
and (0 <=(if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and (0 <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then (if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else V88_chart_microwave_mode_logic_begin_state_outports_mode) else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode))) 
and (0 <=(if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode)) 
and (0 <=V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) 
and (0 <=(if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode)) 
and (0 <=(if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) 
and (0 <=V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) 
and (0 <=(if V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root)) 
and (0 <=(if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode)) 
and (0 <=(if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))) 
and (0 <=(if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode)) 
and (0 <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and (0 <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and (0 <=(if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root)) 
and (0 <=(if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root)) 
and (0 <=V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) 
and (0 <=(if (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) then 1 else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root)) 
and (0 <=(if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2) then 1 else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root) else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root)) 
and (0 <=(if (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) then 1 else V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root)) 
and (0 <=V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) 
and (0 <=(if V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root)) 
and (0 <=V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) 
and (0 <=V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) 
and (0 <=(if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root)) 
and (0 <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and (0 <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root)) 
and (0 <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root))) 
and (0 <=V87_chart_microwave_mode_logic_begin_state_states___root) 
and (0 <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and (0 <=4) 
and (0 <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and (0 <=5) 
and (0 <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and (0 <=6) 
and (0 <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and (0 <=7) 
and (0 <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and (0 <=8) 
and (0 <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and (0 <=(V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) 
and (0 <=(if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining)) 
and (0 <=(if (V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) then 0 else (if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK)))) 
and (0 <=((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10))) 
and (0 <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining))) 
and (0 <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then 0 else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining)) 
and (0 <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK))) 
and (0 <=(if V79_rlt_eval_microwave_mode_logic_rlt_fired_0 then V25_STEPS_TO_COOK else V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining)) 
and (0 <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and (0 <=(if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) 
and (0 <=(if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) 
and (0 <=(if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))) 
and (0 <=(if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))) 
and (0 <=(if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))) 
and (0 <=(if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))) 
and (0 <=(if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))) 
and (0 <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(pre V92_chart_microwave_mode_logic_steps_remaining)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(pre V25_STEPS_TO_COOK)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if (V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) then 0 else (if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK)))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then 0 else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V79_rlt_eval_microwave_mode_logic_rlt_fired_0 then V25_STEPS_TO_COOK else V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining)) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) <=9) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) <=(if KP_9 then 9 else 10)) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) <=10) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) <=60) 
and ((if (V87_chart_microwave_mode_logic_begin_state_states___root = 4) then 0 else V87_chart_microwave_mode_logic_begin_state_states___root) <=V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then (if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)))) <=9) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then (if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if KP_9 then 9 else 10)) 
and (V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY <=((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10))) 
and (V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and ((if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0) <=9) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if KP_9 then 9 else 10)) 
and ((if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)) <=9) 
and ((if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)) <=(if KP_9 then 9 else 10)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(pre V25_STEPS_TO_COOK)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(if (V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) then 0 else (if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK)))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then 0 else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK))) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V79_rlt_eval_microwave_mode_logic_rlt_fired_0 then V25_STEPS_TO_COOK else V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)) <=(V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)) <=((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10))) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)) <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and ((if (DOOR_CLOSED = false) then 0 else 1) <=V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) 
and ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) <=(if (V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) then 0 else (if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK)))) 
and ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK))) 
and ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then (if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else V88_chart_microwave_mode_logic_begin_state_outports_mode) else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode))) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode)) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root))) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) 
and (V88_chart_microwave_mode_logic_begin_state_outports_mode <=(if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode)) 
and (V88_chart_microwave_mode_logic_begin_state_outports_mode <=V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) 
and (V88_chart_microwave_mode_logic_begin_state_outports_mode <=V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) 
and (V88_chart_microwave_mode_logic_begin_state_outports_mode <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and (V88_chart_microwave_mode_logic_begin_state_outports_mode <=V87_chart_microwave_mode_logic_begin_state_states___root) 
and ((if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) <=(if V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root)) 
and ((if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) <=(if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode)) 
and ((pre V96_microwave_microwave_mode_logic_mode) <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode)) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode)) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root)) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root)) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=V87_chart_microwave_mode_logic_begin_state_states___root) 
and ((if V86_chart_microwave_mode_logic_rlt_evtInitStep then (if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else V88_chart_microwave_mode_logic_begin_state_outports_mode) else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root))) 
and ((if V86_chart_microwave_mode_logic_rlt_evtInitStep then (if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else V88_chart_microwave_mode_logic_begin_state_outports_mode) else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) <=(if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root)) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root)) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root))) 
and ((if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) 
and ((if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and ((if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=V87_chart_microwave_mode_logic_begin_state_states___root) 
and ((if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and ((if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))) <=(if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) 
and ((if V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=(if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode)) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root))) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=4) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=5) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=6) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=7) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=8) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=9) 
and ((if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) <=(if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=4) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=5) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=6) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=7) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=8) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=9) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))) 
and ((if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) <=V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) 
and ((if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) <=(if V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root)) 
and ((if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) <=V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) 
and ((if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) <=V87_chart_microwave_mode_logic_begin_state_states___root) 
and ((if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and ((if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) <=(if (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) then 1 else V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root)) 
and ((if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) <=V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) 
and ((if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) <=V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) 
and ((if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) <=(if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root)) 
and ((if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <=V87_chart_microwave_mode_logic_begin_state_states___root) 
and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root)) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root))) 
and (4 <=5) 
and (4 <=6) 
and (4 <=7) 
and (4 <=8) 
and (4 <=9) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))) 
and (5 <=6) 
and (5 <=7) 
and (5 <=8) 
and (5 <=9) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))) 
and (6 <=7) 
and (6 <=8) 
and (6 <=9) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))) 
and (7 <=8) 
and (7 <=9) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))) 
and (8 <=9) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if KP_9 then 9 else 10)) 
and (0 <=(pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) 
and ((pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY) <=9) 
and (9 <=(if KP_9 then 9 else 10)) 
and ((if KP_9 then 9 else 10) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY))) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) <=(V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) 
and ((V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60) <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and ((if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY))) <=(if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY))) 
and ((if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) else (pre V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY)) <=9) 
and (9 <=(if KP_9 then 9 else 10)) 
and ((if KP_9 then 9 else 10) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY) <=9) 
and (9 <=(if KP_9 then 9 else 10)) 
and ((if KP_9 then 9 else 10) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if (V87_chart_microwave_mode_logic_begin_state_states___root = 4) then 0 else V87_chart_microwave_mode_logic_begin_state_states___root) <=V88_chart_microwave_mode_logic_begin_state_outports_mode) 
and (V88_chart_microwave_mode_logic_begin_state_outports_mode <=(if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root)) 
and ((if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) <=(pre V96_microwave_microwave_mode_logic_mode)) 
and ((pre V96_microwave_microwave_mode_logic_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining <=(pre V92_chart_microwave_mode_logic_steps_remaining)) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then (if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)))) <=(if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))))) 
and ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <=(if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) 
and ((if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) <=(if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) 
and ((if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))) <=(if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))) 
and ((if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))) <=(if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))) 
and ((if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))) <=(if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))) 
and ((if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))) <=(if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))) 
and ((if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))) <=(if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))) 
and ((if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY <=9) 
and (9 <=(if KP_9 then 9 else 10)) 
and ((if KP_9 then 9 else 10) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY))) <=(if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY))) 
and ((if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) else (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY)) <=(if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))))) 
and ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <=(if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) 
and ((if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) <=(if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) 
and ((if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))) <=(if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))) 
and ((if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))) <=(if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))) 
and ((if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))) <=(if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))) 
and ((if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))) <=(if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))) 
and ((if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))) <=(if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))) 
and ((if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if KP_CLEAR then 0 else (if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) <=(if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0)) 
and ((if (if ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <= 9) then true else false) then (if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) else 0) <=(if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))))) 
and ((if KP_0 then 0 else (if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))))) <=(if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))))) 
and ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <=(if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) 
and ((if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) <=(if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))))) 
and ((if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))) <=(if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))) 
and ((if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))) <=(if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))))) 
and ((if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))) <=(if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))) 
and ((if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))) <=(if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))))) 
and ((if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))) <=(if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))) 
and ((if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (V48_chart_microwave_mode_logic_clear_off <=(if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root)) 
and ((if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) <=(pre V96_microwave_microwave_mode_logic_mode)) 
and ((pre V96_microwave_microwave_mode_logic_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if (V20_START_PRESSED = false) then 0 else 1) <=(if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root)) 
and ((if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) <=(pre V96_microwave_microwave_mode_logic_mode)) 
and ((pre V96_microwave_microwave_mode_logic_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) <=(if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) 
and ((if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY))) <=(if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY))) 
and ((if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)) <=9) 
and (9 <=(if KP_9 then 9 else 10)) 
and ((if KP_9 then 9 else 10) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then (if V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step then 0 else (if KP_CLEAR then 0 else (if (if ((if (KP_0 and (not (pre KP_0))) then 0 else (if (KP_1 and (not (pre KP_1))) then 1 else (if (KP_2 and (not (pre KP_2))) then 2 else (if (KP_3 and (not (pre KP_3))) then 3 else (if (KP_4 and (not (pre KP_4))) then 4 else (if (KP_5 and (not (pre KP_5))) then 5 else (if (KP_6 and (not (pre KP_6))) then 6 else (if (KP_7 and (not (pre KP_7))) then 7 else (if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)))))))))) <= 9) then true else false) then (pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)))) else (pre V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY)) <=9) 
and (9 <=(if KP_9 then 9 else 10)) 
and ((if KP_9 then 9 else 10) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if (DOOR_CLOSED = false) then 0 else 1) <=(if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root)) 
and ((if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) <=(pre V96_microwave_microwave_mode_logic_mode)) 
and ((pre V96_microwave_microwave_mode_logic_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if ((V25_STEPS_TO_COOK > 0) = false) then 0 else 1) <=(if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) 
and ((if (not (V52_rlt_eval_microwave_mode_logic_ON_rlt_state_1_states___root = 4)) then 1 else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode) <=(if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root)) 
and ((if (not ((V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root >= 1) and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <= 3))) then 1 else V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root) <=(pre V96_microwave_microwave_mode_logic_mode)) 
and ((pre V96_microwave_microwave_mode_logic_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((pre V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY) <=9) 
and (9 <=(if KP_9 then 9 else 10)) 
and ((if KP_9 then 9 else 10) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then (if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else V88_chart_microwave_mode_logic_begin_state_outports_mode) else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode))) 
and ((if V86_chart_microwave_mode_logic_rlt_evtInitStep then (if (not (V87_chart_microwave_mode_logic_begin_state_states___root = 4)) then 1 else V88_chart_microwave_mode_logic_begin_state_outports_mode) else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) else V84_rlt_eval_microwave_mode_logic_rlt_state_3_outports_mode)) <=(if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode)) 
and ((if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) else V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) <=V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode) 
and (V57_rlt_eval_microwave_mode_logic_ON_rlt_state_3_outports_mode <=(if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode)) 
and ((if V81_rlt_eval_microwave_mode_logic_rlt_fired_1 then (if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=(if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode)) 
and ((if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if KP_1 then 1 else (if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))) <=(if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))) 
and ((if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode <=(if V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root)) 
and ((if V74_rlt_enter_microwave_mode_logic_ON_rlt_fired_1 then (if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) else V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root) <=(if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode)) 
and ((if V77_rlt_enter_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V75_rlt_enter_microwave_mode_logic_ON_rlt_state_2_states___root = 3)) then 3 else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) else V76_rlt_enter_microwave_mode_logic_ON_rlt_state_2_outports_mode) <=(if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode)) 
and ((if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V71_rlt_eval_microwave_mode_logic_ON_rlt_state_11_outports_mode) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if (not (V72_rlt_enter_microwave_mode_logic_ON_rlt_state_1_states___root = 2)) then 2 else V88_chart_microwave_mode_logic_begin_state_outports_mode) <=(if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))))) 
and ((if KP_2 then 2 else (if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) <=(if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))))) 
and ((if KP_3 then 3 else (if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) <=(if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root)) 
and ((if ((V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root >= 1) and (V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root <= 3)) then 0 else V58_rlt_eval_microwave_mode_logic_ON_rlt_state_4_states___root) <=(if (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) then 1 else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root)) 
and ((if (V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root = 2) then 1 else V68_rlt_eval_microwave_mode_logic_ON_rlt_state_10_states___root) <=(if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2) then 1 else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root) else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root)) 
and ((if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (if (V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root = 2) then 1 else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root) else V64_rlt_eval_microwave_mode_logic_ON_rlt_state_7_states___root) <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root)) 
and ((if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then (if (not (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root = 4)) then 4 else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) else V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root))) 
and ((if V86_chart_microwave_mode_logic_rlt_evtInitStep then V85_rlt_enter_microwave_mode_logic_rlt_state_2_states___root else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V69_rlt_eval_microwave_mode_logic_ON_rlt_fired_6 then (if (not (V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root = 3)) then 3 else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V70_rlt_eval_microwave_mode_logic_ON_rlt_state_11_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root)) <=4) 
and (4 <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (V82_rlt_eval_microwave_mode_logic_rlt_state_2_states___root <=V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) 
and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root <=4) 
and (4 <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root = 3) then 1 else V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) <=V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) 
and (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root <=(if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root)) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root <=4) 
and (4 <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (V62_rlt_eval_microwave_mode_logic_ON_rlt_state_6_states___root <=(if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root)) 
and ((if V54_rlt_eval_microwave_mode_logic_ON_rlt_fired_2 then (if (not (V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root = 2)) then 2 else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) else V56_rlt_eval_microwave_mode_logic_ON_rlt_state_3_states___root) <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root <=4) 
and (4 <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((if V51_rlt_eval_microwave_mode_logic_ON_rlt_fired_1 then (if ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3)) then 0 else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) else V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) <=V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root) 
and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <=V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root) 
and (V53_rlt_eval_microwave_mode_logic_ON_rlt_state_2_states___root <=4) 
and (4 <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (V87_chart_microwave_mode_logic_begin_state_states___root <=(pre V90_chart_microwave_mode_logic_final_state_states___root)) 
and ((pre V90_chart_microwave_mode_logic_final_state_states___root) <=4) 
and (4 <=(if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))))) 
and ((if KP_4 then 4 else (if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (5 <=(if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))))) 
and ((if KP_5 then 5 else (if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (6 <=(if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))))) 
and ((if KP_6 then 6 else (if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (7 <=(if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10)))) 
and ((if KP_7 then 7 else (if KP_8 then 8 else (if KP_9 then 9 else 10))) <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and (8 <=(if KP_8 then 8 else (if KP_9 then 9 else 10))) 
and ((if KP_8 then 8 else (if KP_9 then 9 else 10)) <=(if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10))) 
and ((if (KP_8 and (not (pre KP_8))) then 8 else (if (KP_9 and (not (pre KP_9))) then 9 else 10)) <=(if (KP_9 and (not (pre KP_9))) then 9 else 10)) 
and ((if (KP_9 and (not (pre KP_9))) then 9 else 10) <=10) 
and (10 <=60) 
and ((V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) <=(if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining)) 
and ((if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) <=(if V86_chart_microwave_mode_logic_rlt_evtInitStep then V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining))) 
and ((if V86_chart_microwave_mode_logic_rlt_evtInitStep then V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining else (if ((not V81_rlt_eval_microwave_mode_logic_rlt_fired_1) and ((V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root >= 1) and (V83_rlt_eval_microwave_mode_logic_rlt_state_3_states___root <= 3))) then (if V65_rlt_eval_microwave_mode_logic_ON_rlt_fired_5 then (V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining - 1) else V63_rlt_eval_microwave_mode_logic_ON_rlt_state_6_outports_steps_remaining) else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining)) <=(if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then 0 else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining)) 
and ((if V60_rlt_eval_microwave_mode_logic_ON_rlt_fired_4 then 0 else V80_rlt_eval_microwave_mode_logic_rlt_state_1_outports_steps_remaining) <=(if V79_rlt_eval_microwave_mode_logic_rlt_fired_0 then V25_STEPS_TO_COOK else V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining)) 
and ((if V79_rlt_eval_microwave_mode_logic_rlt_fired_0 then V25_STEPS_TO_COOK else V89_chart_microwave_mode_logic_begin_state_outports_steps_remaining) <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and ((V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10) <=((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10))) 
and (((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and ((if (V37_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_init_step and (not V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock)) then 0 else (if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK))) <=(if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK))) 
and ((if V26_rlt_condact_resetmicrowave_microwave_KEYPAD_PROCESSING_rlt_clock then ((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1) else (pre V25_STEPS_TO_COOK)) <=((((V40_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_RIGHT_DIGIT_DIGIT_TO_DISPLAY * 1) + (V39_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_MIDDLE_DIGIT_DIGIT_TO_DISPLAY * 10)) + (V38_microwave_microwave_KEYPAD_PROCESSING_DISPLAY_LEFT_DIGIT_DIGIT_TO_DISPLAY * 60)) * 1)) 
and  true ));
tel.

