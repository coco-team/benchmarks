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
  V91_X: bool;

let
  OK = (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))));
  V24_toofast = (V28_speed >= 3);
  V25_stop = (V29_time >= 4);
  V26_bump = (V27_dist = 10);
  V27_dist = (0 -> (if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)));
  V28_speed = (0 -> (if ((not V30_move) or V31_second) then 0 else (if (
  V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))));
  V29_time = (0 -> (if V31_second then ((pre V29_time) + 1) else (pre V29_time)));
  V30_move = (true -> (pre (((V30_move and (not V25_stop)) and (not V24_toofast)) and (not V26_bump))));
  V31_second = (false -> s);
  V32_meter = (false -> (m and (not s)));
  V33_env = (V91_X -> (V91_X and (pre V33_env)));
  V91_X = (not (m and s));

  --%PROPERTY OK=true;



-- 111 implications. 
assert (true -> ((V91_X = (not (m and s))) 
and ((V27_dist = 10) = (V27_dist > 9)) 
and (((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump))) => V30_move) 
and (((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump))) => (((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast)))) 
and (((V27_dist > 9) => (not (V30_move and V32_meter))) => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and (V32_meter => (m and (not s))) 
and (((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump))) => (not (pre V26_bump))) 
and ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) => (not (pre V24_toofast))) 
and ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) => (not (pre V25_stop))) 
and (V31_second => s) 
and ((V91_X and (pre V33_env)) => V33_env) 
and (((pre V30_move) and (not (pre V25_stop))) => (pre V30_move)) 
and ((pre V26_bump) => ((V27_dist > 9) => (not (V30_move and V32_meter)))) 
and ((pre V26_bump) => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and (((pre V30_move) and (not (pre V25_stop))) => (not (pre V25_stop))) 
and ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) => ((pre V30_move) and (not (pre V25_stop)))) 
and ((V30_move and V32_meter) => (not (pre V26_bump))) 
and ((V30_move and V32_meter) => (not (pre V25_stop))) 
and ((V30_move and V32_meter) => V32_meter) 
and (V31_second => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and (V31_second => ((not V30_move) or V31_second)) 
and (s => (not (V30_move and V32_meter))) 
and ((V29_time >= 4) => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and ((V29_time >= 4) => ((V27_dist > 9) => (not (V30_move and V32_meter)))) 
and ((pre V25_stop) => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and ((pre V25_stop) => ((V27_dist > 9) => (not (V30_move and V32_meter)))) 
and ((V29_time >= 4) => ((not V30_move) or V31_second)) 
and ((pre V24_toofast) => ((pre V30_move) and (not (pre V25_stop)))) 
and ((not V30_move) => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and ((not V30_move) => ((V27_dist > 9) => (not (V30_move and V32_meter)))) 
and ((not s) => V91_X) 
and ((m and s) => s) 
and ((m and (not s)) => (not s)) 
and (s => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and (s => ((V27_dist > 9) => (not (V30_move and V32_meter)))) 
and (((not V30_move) or V31_second) => (not (V30_move and V32_meter))) 
and ((V30_move and V32_meter) => ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump)))) 
and ((m and (not s)) => m) 
and ((V91_X and (pre V33_env)) => (pre V33_env)) 
and ((not V30_move) => ((not V30_move) or V31_second)) 
and ((V28_speed >= 3) => ((((pre V30_move) and (not (pre V25_stop))) and (not (pre V24_toofast))) and (not (pre V26_bump)))) 
and ((V28_speed >= 3) => ((pre V30_move) and (not (pre V25_stop)))) 
and ((V28_speed >= 3) => (not (pre V26_bump))) 
and ((V28_speed >= 3) => (not (pre V25_stop))) 
and ((V28_speed >= 3) => m) 
and (V33_env => V91_X) 
and ((V28_speed >= 3) => (V30_move and V32_meter)) 
and ((V28_speed >= 3) => (not s)) 
and ((V28_speed >= 3) => V91_X) 
and ((m and s) => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and ((m and s) => ((V27_dist > 9) => (not (V30_move and V32_meter)))) 
and ((m and s) => m) 
and (((not V30_move) or V31_second) => (V33_env => ((V27_dist > 9) => (not (V30_move and V32_meter))))) 
and (((not V30_move) or V31_second) => ((V27_dist > 9) => (not (V30_move and V32_meter)))) 
and ((not (V30_move and V32_meter)) => ((V27_dist > 9) => (not (V30_move and V32_meter)))) 
and (0 <=(pre V28_speed)) 
and (0 <=(pre V27_dist)) 
and (0 <=V29_time) 
and (0 <=V28_speed) 
and (0 <=(if ((not V30_move) or V31_second) then 0 else (if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)))) 
and (0 <=(if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))) 
and (0 <=V27_dist) 
and (0 <=(if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist))) 
and (0 <=1) 
and (0 <=((pre V28_speed) + 1)) 
and (0 <=((pre V27_dist) + 1)) 
and (0 <=3) 
and (0 <=4) 
and (0 <=9) 
and (0 <=10) 
and ((pre V28_speed) <=(if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))) 
and ((pre V28_speed) <=((pre V28_speed) + 1)) 
and ((pre V28_speed) <=3) 
and ((pre V28_speed) <=4) 
and ((pre V28_speed) <=9) 
and (V28_speed <=V27_dist) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=((pre V28_speed) + 1)) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=3) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=4) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=9) 
and ((if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)) <=10) 
and (1 <=((pre V28_speed) + 1)) 
and (1 <=((pre V27_dist) + 1)) 
and (1 <=3) 
and (1 <=4) 
and (1 <=9) 
and (1 <=10) 
and (((pre V28_speed) + 1) <=4) 
and (((pre V28_speed) + 1) <=9) 
and (((pre V28_speed) + 1) <=10) 
and (0 <=(pre V29_time)) 
and ((pre V29_time) <=(if V31_second then ((pre V29_time) + 1) else (pre V29_time))) 
and ((if V31_second then ((pre V29_time) + 1) else (pre V29_time)) <=((pre V29_time) + 1)) 
and ((pre V28_speed) <=(pre V27_dist)) 
and ((pre V27_dist) <=(if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist))) 
and ((if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)) <=((pre V27_dist) + 1)) 
and (V29_time <=(if V31_second then ((pre V29_time) + 1) else (pre V29_time))) 
and ((if V31_second then ((pre V29_time) + 1) else (pre V29_time)) <=((pre V29_time) + 1)) 
and (V28_speed <=(if ((not V30_move) or V31_second) then 0 else (if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)))) 
and ((if ((not V30_move) or V31_second) then 0 else (if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))) <=(if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed))) 
and ((if (V30_move and V32_meter) then ((pre V28_speed) + 1) else (pre V28_speed)) <=(if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist))) 
and ((if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)) <=((pre V27_dist) + 1)) 
and (V27_dist <=(if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist))) 
and ((if (V30_move and V32_meter) then ((pre V27_dist) + 1) else (pre V27_dist)) <=((pre V27_dist) + 1)) 
and (1 <=((pre V29_time) + 1)) 
and (((pre V28_speed) + 1) <=((pre V27_dist) + 1)) 
and (3 <=4) 
and (4 <=9) 
and (9 <=10) 
and  true ));
tel.

