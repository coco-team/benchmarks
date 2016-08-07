node top
  (m: bool;
  s: bool)
returns
  (OK: bool);

var
  V24_toofast: bool;
  V25_stop: bool;
  V26_bump: bool;
  V27_dist: int;
  V28_speed: int;
  V29_time: int;
  V30_move: bool;
  V31_second: bool;
  V32_meter: bool;
  V33_env: bool;
  V90_X: bool;

let
  OK = (V33_env => (V28_speed < 4));
  V24_toofast = (V28_speed >= 3);
  V25_stop = (V29_time >= 4);
  V26_bump = (V27_dist = 10);
  V27_dist = (0 -> (if (V30_move and V32_meter) then ((pre V27_dist) + 1) else 
  (pre V27_dist)));
  V28_speed = (0 -> (if ((not V30_move) and V31_second) then 0 else (if (
  V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))));
  V29_time = (0 -> (if V31_second then ((pre V29_time) + 1) else (pre V29_time)
  ));
  V30_move = (true -> (pre (((V30_move and (not V25_stop)) and (not V24_toofast
  )) and (not V26_bump))));
  V31_second = (false -> s);
  V32_meter = (false -> (m and (not s)));
  V33_env = (V90_X -> (V90_X or (pre V33_env)));
  V90_X = (not (m and s));
  --%PROPERTY  OK=true;



-- 83 implications. 
assert (true -> (((V33_env => (V28_speed < 4)) = true) 
and (true = (V28_speed < 4)) 
and (V90_X = (not (m and s))) 
and (((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump))) => (((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast)))) 
and ((pre V26_bump) => (pre V33_env)) 
and (V32_meter => (m and (not s))) 
and (((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump))) => (not (pre V26_bump))) 
and ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) => (not (pre V24_toofast))) 
and (((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump))) => V30_move) 
and (V33_env => (V90_X or (pre V33_env))) 
and (V31_second => s) 
and (((pre V30_move) and (not (pre V25_stop))) => (pre V30_move)) 
and ((V27_dist = 10) => V33_env) 
and (((pre V30_move) and (not (pre V25_stop))) => (not (pre V25_stop))) 
and ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) => (not (pre V25_stop))) 
and ((pre V24_toofast) => (not (pre V25_stop))) 
and ((pre V24_toofast) => (V90_X or (pre V33_env))) 
and ((pre V24_toofast) => (pre V33_env)) 
and ((pre V25_stop) => (not (pre V24_toofast))) 
and ((V30_move and V32_meter) => ((pre V30_move) and (not (pre V25_stop)))) 
and ((V30_move and V32_meter) => (not (pre V26_bump))) 
and ((V30_move and V32_meter) => (not (pre V25_stop))) 
and ((V30_move and V32_meter) => V32_meter) 
and (((not V30_move) and V31_second) => (not V30_move)) 
and ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) => ((pre V30_move) and (not (pre V25_stop)))) 
and ((pre V26_bump) => (V90_X or (pre V33_env))) 
and ((V27_dist = 10) => (pre V33_env)) 
and ((V30_move and V32_meter) => ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump)))) 
and ((m and (not s)) => (not s)) 
and (V90_X => V33_env) 
and ((pre V33_env) => (V90_X or (pre V33_env))) 
and ((m and (not s)) => m) 
and (((not V30_move) and V31_second) => V31_second) 
and ((V28_speed >= 3) => (not (pre V25_stop))) 
and ((not s) => V90_X) 
and ((V28_speed >= 3) => V90_X) 
and ((m and s) => s) 
and ((V28_speed >= 3) => (not s)) 
and ((V28_speed >= 3) => V33_env) 
and ((V28_speed >= 3) => (pre V33_env)) 
and ((m and s) => m) 
and (0 <=(pre V29_time)) 
and (0 <=V29_time) 
and (0 <=(if V31_second then ((pre V29_time) + 1) else (pre V29_time))) 
and (0 <=V28_speed) 
and (0 <=(if ((not V30_move) and V31_second) then 0 else (if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)))) 
and (0 <=V27_dist) 
and (0 <=1) 
and (0 <=((pre V29_time) + 1)) 
and ((pre V28_speed) <=(if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))) 
and ((pre V28_speed) <=((pre V28_speed) + 1)) 
and ((pre V28_speed) <=3) 
and ((pre V28_speed) <=4) 
and (V28_speed <=V27_dist) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=((pre V28_speed) + 1)) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=3) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=4) 
and ((if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)) <=10) 
and (1 <=((pre V29_time) + 1)) 
and (1 <=3) 
and (((pre V28_speed) + 1) <=4) 
and (((pre V28_speed) + 1) <=10) 
and (0 <=(pre V28_speed)) 
and ((pre V28_speed) <=(pre V27_dist)) 
and ((pre V27_dist) <=(if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist))) 
and ((if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)) <=((pre V27_dist) + 1)) 
and ((pre V29_time) <=(if V31_second then ((pre V29_time) + 1) else (pre V29_time))) 
and ((if V31_second then ((pre V29_time) + 1) else (pre V29_time)) <=((pre V29_time) + 1)) 
and (V29_time <=(if V31_second then ((pre V29_time) + 1) else (pre V29_time))) 
and ((if V31_second then ((pre V29_time) + 1) else (pre V29_time)) <=((pre V29_time) + 1)) 
and (V28_speed <=(if ((not V30_move) and V31_second) then 0 else (if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)))) 
and ((if ((not V30_move) and V31_second) then 0 else (if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))) <=(if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=(if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist))) 
and ((if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)) <=((pre V27_dist) + 1)) 
and (V27_dist <=(if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist))) 
and ((if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)) <=((pre V27_dist) + 1)) 
and (1 <=((pre V28_speed) + 1)) 
and (((pre V28_speed) + 1) <=((pre V27_dist) + 1)) 
and (3 <=4) 
and (4 <=10) 
and  true ));
tel.

