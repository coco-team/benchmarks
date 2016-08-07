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
  OK = (true -> ((not (pre V20_early)) or (not V19_late)));
  V19_late = (false -> (if (pre V19_late) then (V63_diff < 0) else (V63_diff <= 
  -10)));
  V20_early = (false -> (if (pre V20_early) then (V63_diff > 0) else (V63_diff 
  >= 10)));
  V63_diff = (if false then 0 else (if (beacon and second) then (V65_PC + 
  V64_incr) else V65_PC));
  V64_incr = (if (beacon and (not second)) then 1 else (if (second and (not 
  beacon)) then 2 else 0));
  V65_PC = (0 -> (pre V63_diff));
  --%PROPERTY OK=true;



-- 52 implications. 
assert (true -> (((not V19_late) = true) 
and (true = (not (pre V20_early))) 
and ((not (pre V20_early)) = ((not (pre V20_early)) or (not V19_late))) 
and ((V63_diff < 0) = false) 
and (false = (pre V19_late)) 
and ((pre V19_late) = V19_late) 
and (V19_late = (V63_diff >= 10)) 
and ((V63_diff >= 10) = (V63_diff > 0)) 
and ((V63_diff > 0) = (pre V20_early)) 
and ((pre V20_early) = (if (pre V20_early) then (V63_diff > 0) else (V63_diff >= 10))) 
and ((if (pre V20_early) then (V63_diff > 0) else (V63_diff >= 10)) = (if (pre V19_late) then (V63_diff < 0) else (V63_diff <= (- 10)))) 
and ((if (pre V19_late) then (V63_diff < 0) else (V63_diff <= (- 10))) = (V63_diff <= (- 10))) 
and ((second and (not beacon)) => (not beacon)) 
and ((beacon and (not second)) => (not second)) 
and ((beacon and second) => beacon) 
and ((beacon and second) => second) 
and ((beacon and (not second)) => beacon) 
and ((second and (not beacon)) => second) 
and ((if (beacon and second) then (V65_PC + V64_incr) else V65_PC) = V63_diff) 
and (V63_diff = (pre V63_diff)) 
and ((pre V63_diff) = (if false then 0 else (if (beacon and second) then (V65_PC + V64_incr) else V65_PC))) 
and ((if false then 0 else (if (beacon and second) then (V65_PC + V64_incr) else V65_PC)) = 0) 
and (0 = V65_PC) 
and ((V65_PC + V64_incr) = V64_incr) 
and (V64_incr = (if (beacon and (not second)) then 1 else (if (second and (not beacon)) then 2 else 0))) 
and ((if (beacon and second) then (V65_PC + V64_incr) else V65_PC) <=1) 
and ((- 10) <=(if (beacon and second) then (V65_PC + V64_incr) else V65_PC)) 
and ((if (beacon and second) then (V65_PC + V64_incr) else V65_PC) <=(if (second and (not beacon)) then 2 else 0)) 
and ((if (second and (not beacon)) then 2 else 0) <=(V65_PC + V64_incr)) 
and ((V65_PC + V64_incr) <=2) 
and (2 <=10) 
and (1 <=2) 
and (2 <=10) 
and  true ));
tel.

