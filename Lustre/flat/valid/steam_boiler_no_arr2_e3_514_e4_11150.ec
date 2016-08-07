node top
  (steam_boiler_waiting: bool;
  physical_units_ready: bool;
  stop_request: bool;
  steam: int;
  level_defect: int;
  steam_defect: int;
  pump_defect_0: int;
  pump_defect_1: int;
  pump_defect_2: int;
  pump_defect_3: int;
  pump_control_defect_0: int;
  pump_control_defect_1: int;
  pump_control_defect_2: int;
  pump_control_defect_3: int;
  q: int;
  pump_state_0: int;
  pump_state_1: int;
  pump_state_2: int;
  pump_state_3: int)
returns
  (OK: bool);

var
  V462_op_mode: int;
  V463_mode_normal_then_water_level_ok: bool;
  V464_mode_normal_then_no_stop_request: bool;
  V1003_op_mode: int;

let
  OK = (V463_mode_normal_then_water_level_ok and 
  V464_mode_normal_then_no_stop_request);
  V462_op_mode = (1 -> (if (((((((((((pump_state_0 = 3) or (pump_state_1 = 3)) 
  or (pump_state_2 = 3)) or (pump_state_3 = 3)) or ((V1003_op_mode = 1) and (
  steam <> 0))) or ((V1003_op_mode = 2) and ((level_defect <> 0) or (
  steam_defect <> 0)))) or ((V1003_op_mode = 3) and ((q <= 150) or (q >= 850)))
  ) or ((V1003_op_mode = 4) and ((q <= 150) or (q >= 850)))) or ((V1003_op_mode 
  = 5) and ((((q <= 150) or (q >= 850)) or (steam_defect <> 0)) or ((((
  pump_defect_0 <> 0) and (pump_defect_1 <> 0)) and (pump_defect_2 <> 0)) and (
  pump_defect_3 <> 0))))) or stop_request) or ((pre V462_op_mode) = 6)) then 6 
  else (if ((pre V462_op_mode) = 1) then (if steam_boiler_waiting then 2 else 1
  ) else (if (((pre V462_op_mode) = 2) and (not physical_units_ready)) then 2 
  else (if (level_defect <> 0) then 5 else (if ((((level_defect <> 0) or (
  steam_defect <> 0)) or ((((pump_defect_0 <> 0) or (pump_defect_1 <> 0)) or (
  pump_defect_2 <> 0)) or (pump_defect_3 <> 0))) or ((((pump_control_defect_0 
  <> 0) or (pump_control_defect_1 <> 0)) or (pump_control_defect_2 <> 0)) or (
  pump_control_defect_3 <> 0))) then 4 else 3))))));
  V463_mode_normal_then_water_level_ok = (true -> (((V462_op_mode = 3) and (
  (pre V462_op_mode) = 3)) => (not ((q <= 150) or (q >= 850)))));
  V464_mode_normal_then_no_stop_request = ((V462_op_mode = 3) => (not 
  stop_request));
  V1003_op_mode = (pre V462_op_mode);
  --%PROPERTY OK;


tel.

