node top
  (beacon: bool;
  second: bool)
returns
  (OK: bool);

var
  V19_late: bool;
  V20_early: bool;
  V63_diff: int;
  V64_incr: int;
  V65_PC: int;

let
  OK = (true -> ((not V19_late) and (pre V20_early)));
  V19_late = (false -> (if (pre V19_late) then (V63_diff < 0) else (V63_diff <= 
  -10)));
  V20_early = (false -> (if (pre V20_early) then (V63_diff > 0) else (V63_diff 
  >= 10)));
  V63_diff = (if false then 0 else (if (beacon or second) then (V65_PC + 
  V64_incr) else V65_PC));
  V64_incr = (if (beacon or (not second)) then 1 else (if (second and (not 
  beacon)) then 2 else 0));
  V65_PC = (0 -> (pre V63_diff));
  --%PROPERTY OK=true;



-- 49 implications. 
assert (true -> (((not V19_late) = true) 
and ((pre V20_early) = ((not V19_late) and (pre V20_early))) 
and ((V63_diff < 0) = false) 
and (false = (pre V19_late)) 
and ((pre V19_late) = (if (pre V19_late) then (V63_diff < 0) else (V63_diff <= (- 10)))) 
and ((if (pre V19_late) then (V63_diff < 0) else (V63_diff <= (- 10))) = V19_late) 
and (V19_late = (V63_diff <= (- 10))) 
and ((V63_diff >= 10) => (if (pre V20_early) then (V63_diff > 0) else (V63_diff >= 10))) 
and (second => (beacon or second)) 
and ((second and (not beacon)) => second) 
and ((not second) => (beacon or (not second))) 
and ((if (pre V20_early) then (V63_diff > 0) else (V63_diff >= 10)) => (V63_diff > 0)) 
and ((second and (not beacon)) => (V63_diff > 0)) 
and ((second and (not beacon)) => (not beacon)) 
and ((beacon or second) => (V63_diff > 0)) 
and (beacon => (V63_diff > 0)) 
and (beacon => (beacon or (not second))) 
and (beacon => (beacon or second)) 
and (V64_incr = (if (beacon or (not second)) then 1 else (if (second and (not beacon)) then 2 else 0))) 
and ((if (beacon or second) then (V65_PC + V64_incr) else V65_PC) = V63_diff) 
and (V63_diff = (if false then 0 else (if (beacon or second) then (V65_PC + V64_incr) else V65_PC))) 
and (0 <=(if (second and (not beacon)) then 2 else 0)) 
and (0 <=V65_PC) 
and (0 <=(pre V63_diff)) 
and (0 <=(if (beacon or second) then (V65_PC + V64_incr) else V65_PC)) 
and ((if (second and (not beacon)) then 2 else 0) <=(if (beacon or second) then (V65_PC + V64_incr) else V65_PC)) 
and (V64_incr <=(V65_PC + V64_incr)) 
and (V65_PC <=(if (beacon or second) then (V65_PC + V64_incr) else V65_PC)) 
and (V65_PC <=(V65_PC + V64_incr)) 
and ((- 10) <=0) 
and (0 <=1) 
and (1 <=V64_incr) 
and (V64_incr <=2) 
and (2 <=10) 
and ((if (second and (not beacon)) then 2 else 0) <=V64_incr) 
and (V64_incr <=2) 
and (2 <=10) 
and (V65_PC <=(pre V63_diff)) 
and ((if (beacon or second) then (V65_PC + V64_incr) else V65_PC) <=(V65_PC + V64_incr)) 
and  true ));
tel.

