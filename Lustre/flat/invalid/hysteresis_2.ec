node top
  (beacon: bool;
  second: bool)
returns
  (OK: bool);

var
  V19_late: bool;
  V20_early: bool;
  V71_diff: int;
  V72_incr: int;
  V73_pc: int;

let
  OK = (true -> (not (V19_late and (pre V20_early))));
  V19_late = (false -> (if (pre V19_late) then (V71_diff < 0) else (V71_diff <= 
  -10)));
  V20_early = (false -> (if (pre V20_early) then (V71_diff > 0) else (V71_diff 
  >= 10)));
  V71_diff = (if false then 0 else (if (((beacon or second) and (V73_pc > -1000
  )) and (V73_pc < 1000)) then (V73_pc + V72_incr) else V73_pc));
  V72_incr = (if (beacon and (not second)) then 1 else (if (second and (not 
  beacon)) then -1 else 0));
  V73_pc = (0 -> (pre V71_diff));
    --%PROPERTY OK=true;



-- 41 implications. 
assert (true -> (((not (V19_late and (pre V20_early))) = true) 
and (false = (V19_late and (pre V20_early))) 
and ((V71_diff >= 10) => (if (pre V20_early) then (V71_diff > 0) else (V71_diff >= 10))) 
and ((((beacon or second) and (V73_pc > (- 1000))) and (V73_pc < 1000)) => (V73_pc < 1000)) 
and (((beacon or second) and (V73_pc > (- 1000))) => (beacon or second)) 
and ((V71_diff <= (- 10)) => V19_late) 
and (V19_late => (if (pre V19_late) then (V71_diff < 0) else (V71_diff <= (- 10)))) 
and ((if (pre V19_late) then (V71_diff < 0) else (V71_diff <= (- 10))) => (V73_pc < 1000)) 
and ((if (pre V19_late) then (V71_diff < 0) else (V71_diff <= (- 10))) => (V71_diff < 0)) 
and ((beacon and (not second)) => (not second)) 
and ((second and (not beacon)) => (not beacon)) 
and ((beacon and (not second)) => beacon) 
and ((second and (not beacon)) => second) 
and (beacon => (beacon or second)) 
and ((V71_diff < 0) => (V73_pc < 1000)) 
and (second => (beacon or second)) 
and (V72_incr = (if (beacon and (not second)) then 1 else (if (second and (not beacon)) then (- 1) else 0))) 
and ((if false then 0 else (if (((beacon or second) and (V73_pc > (- 1000))) and (V73_pc < 1000)) then (V73_pc + V72_incr) else V73_pc)) = (if (((beacon or second) and (V73_pc > (- 1000))) and (V73_pc < 1000)) then (V73_pc + V72_incr) else V73_pc)) 
and ((if (((beacon or second) and (V73_pc > (- 1000))) and (V73_pc < 1000)) then (V73_pc + V72_incr) else V73_pc) = V71_diff) 
and ((- 1000) <=V73_pc) 
and ((- 1000) <=(pre V71_diff)) 
and ((- 1000) <=(if false then 0 else (if (((beacon or second) and (V73_pc > (- 1000))) and (V73_pc < 1000)) then (V73_pc + V72_incr) else V73_pc))) 
and ((if (second and (not beacon)) then (- 1) else 0) <=V72_incr) 
and ((- 1000) <=(- 10)) 
and ((- 10) <=(- 1)) 
and ((- 1) <=(if (second and (not beacon)) then (- 1) else 0)) 
and ((if (second and (not beacon)) then (- 1) else 0) <=0) 
and (0 <=1) 
and (1 <=10) 
and (10 <=1000) 
and (V72_incr <=1) 
and (1 <=10) 
and (10 <=1000) 
and (V73_pc <=1000) 
and ((pre V71_diff) <=1000) 
and ((if false then 0 else (if (((beacon or second) and (V73_pc > (- 1000))) and (V73_pc < 1000)) then (V73_pc + V72_incr) else V73_pc)) <=1000) 
and  true ));
tel.

