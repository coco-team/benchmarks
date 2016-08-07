node top
  (e1: bool;
  e2: bool;
  e3: bool;
  e4: bool;
  e5: bool;
  e6: bool;
  e7: bool;
  e8: bool;
  i_invalid: int)
returns
  (OK: bool);

var
  V51_invalid: int;
  V52_dirty: int;
  V53_exclusive: int;
  V54_shared: int;
  V55_R5: bool;
  V56_RT: bool;
  V57_procs: int;
  V58_env: bool;
  V113_garde1: bool;
  V114_garde2: bool;
  V115_garde3: bool;
  V116_garde4: bool;
  V117_garde5: bool;
  V118_garde6: bool;
  V119_garde7: bool;
  V120_garde8: bool;
  V121_mem_invalid: int;
  V140_X: bool;

let
  OK = (V56_RT and V55_R5);
  V51_invalid = (V121_mem_invalid -> (if e1 then (if V113_garde1 then ((pre 
  V51_invalid) - 1) else (pre V51_invalid)) else (if e2 then (if V114_garde2 
  then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e3 then (if 
  V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 
  then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) 
  else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre 
  V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) 
  else (pre V51_invalid)) else (pre V51_invalid))))))));
  V52_dirty = (0 -> (if e2 then (if V114_garde2 then ((pre V52_dirty) - 1) else 
  (pre V52_dirty)) else (if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) 
  else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre 
  V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else 
  (pre V52_dirty)) else (pre V52_dirty))))));
  V53_exclusive = (0 -> (if e1 then (if V113_garde1 then ((pre V53_exclusive) + 
  1) else (pre V53_exclusive)) else (if e3 then (if V115_garde3 then 0 else 
  (pre V53_exclusive)) else (if e4 then (if V116_garde4 then ((pre 
  V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if 
  V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if 
  e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre 
  V53_exclusive)))))));
  V54_shared = (0 -> (if e2 then (if V114_garde2 then ((pre V54_shared) + 2) 
  else (pre V54_shared)) else (if e3 then (if V115_garde3 then (((pre 
  V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (if e5 
  then (if V117_garde5 then (pre 0) else (pre V54_shared)) else (if e7 then (if 
  V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 
  then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else 
  (pre V54_shared)) else (pre V54_shared)))))));
  V55_R5 = (V58_env => (V54_shared <= V57_procs));
  V56_RT = (V58_env => ((((V51_invalid + V52_dirty) + V53_exclusive) + 
  V54_shared) <= V57_procs));
  V57_procs = (i_invalid -> (pre V57_procs));
  V58_env = (V140_X -> (V140_X and (pre V58_env)));
  V113_garde1 = (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and (
  (pre V54_shared) = 0)) and ((pre V53_exclusive) = 0));
  V114_garde2 = (((pre V51_invalid) >= 1) and ((pre V52_dirty) >= 1));
  V115_garde3 = (((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre 
  V53_exclusive)) >= 1));
  V116_garde4 = ((pre V53_exclusive) >= 1);
  V117_garde5 = ((pre V54_shared) = 1);
  V118_garde6 = (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and (
  (pre V54_shared) = 0)) and ((pre V53_exclusive) = 0));
  V119_garde7 = (((pre V51_invalid) >= 1) and ((pre V52_dirty) >= 1));
  V120_garde8 = (((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre 
  V53_exclusive)) >= 1));
  V121_mem_invalid = (i_invalid -> (pre V121_mem_invalid));
  V140_X = (((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) 
  and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not 
  e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) 
  and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and 
  (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and 
  (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and 
  (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5
  )) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)
  ) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8
  ))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)
  ) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and 
  (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or 
  ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and 
  (not e6)) and (not e7)) and e8)) and (i_invalid >= 0));
    --%PROPERTY OK=true;



-- 353 implications. 
assert (true -> ((V55_R5 = (V58_env => (V54_shared <= V57_procs))) 
and ((V58_env => (V54_shared <= V57_procs)) = (V56_RT and V55_R5)) 
and ((V56_RT and V55_R5) = V56_RT) 
and (V56_RT = true) 
and (true = (V58_env => ((((V51_invalid + V52_dirty) + V53_exclusive) + V54_shared) <= V57_procs))) 
and (V140_X = (((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8)) and (i_invalid >= 0))) 
and (V113_garde1 = V118_garde6) 
and (V118_garde6 = (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and ((pre V54_shared) = 0)) and ((pre V53_exclusive) = 0))) 
and (V114_garde2 = V119_garde7) 
and (V119_garde7 = (((pre V51_invalid) >= 1) and ((pre V52_dirty) >= 1))) 
and (V116_garde4 = ((pre V53_exclusive) >= 1)) 
and (V120_garde8 = (((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre V53_exclusive)) >= 1))) 
and ((((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre V53_exclusive)) >= 1)) = V115_garde3) 
and (false = ((pre V54_shared) = 1)) 
and (((pre V54_shared) = 1) = V117_garde5) 
and ((V140_X and (pre V58_env)) => V58_env) 
and (V116_garde4 => (((pre V54_shared) + (pre V53_exclusive)) >= 1)) 
and (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and ((pre V54_shared) = 0)) => (((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0))) 
and (V114_garde2 => ((pre V52_dirty) >= 1)) 
and (V120_garde8 => (((pre V54_shared) + (pre V53_exclusive)) >= 1)) 
and (V113_garde1 => ((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and ((pre V54_shared) = 0))) 
and (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and ((pre V54_shared) = 0)) => ((pre V54_shared) = 0)) 
and ((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) => ((pre V51_invalid) >= 1)) 
and (V120_garde8 => ((pre V51_invalid) >= 1)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) 
and (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) 
and ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) => ((((not e1) and (not e2)) and (not e3)) and e4)) 
and ((((e1 and (not e2)) and (not e3)) and (not e4)) => ((e1 and (not e2)) and (not e3))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7))) 
and (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e3)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => ((not e1) and (not e2))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) 
and (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e6)) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e6)) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e5)) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => (not e3)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => (not e6)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e6)) 
and (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) => (not e7)) 
and ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => (not e5)) 
and ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) => (not e7)) 
and ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) => (not e6)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e4)) 
and ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e4)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e4)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e4)) 
and (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (((e1 and (not e2)) and (not e3)) and (not e4))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7))) 
and ((((not e1) and e2) and (not e3)) => ((not e1) and e2)) 
and (V113_garde1 => ((pre V54_shared) = 0)) 
and (V113_garde1 => ((pre V53_exclusive) = 0)) 
and ((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) => ((pre V52_dirty) = 0)) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) => ((((not e1) and (not e2)) and e3) and (not e4))) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => ((((not e1) and e2) and (not e3)) and (not e4))) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (((not e1) and (not e2)) and e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (V114_garde2 => ((pre V51_invalid) >= 1)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => e4) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (((not e1) and (not e2)) and e3)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => ((not e1) and (not e2))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => ((not e1) and (not e2))) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => ((not e1) and (not e2))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => ((not e1) and (not e2))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => e5) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => e7) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (((not e1) and e2) and (not e3))) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (((not e1) and (not e2)) and (not e3))) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and e4) and (not e5))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e7)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (((not e1) and (not e2)) and (not e3))) 
and (V58_env => ((((V51_invalid + V52_dirty) + V53_exclusive) + V54_shared) <= V57_procs)) 
and (V58_env => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e5)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e6)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => (not e7)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e6)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e3)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e4)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => e5) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) => (not e8)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e4)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (((not e1) and (not e2)) and (not e3))) 
and (V58_env => (V54_shared <= V57_procs)) 
and ((V140_X and (pre V58_env)) => (V54_shared <= V57_procs)) 
and ((V140_X and (pre V58_env)) => (pre V58_env)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => (not e7)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e4)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => e6) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and e2) and (not e3)) and (not e4)) and (not e5))) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e5)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e5)) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => e2) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => e8) 
and (((not e1) and (not e2)) => (not e1)) 
and (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and ((((e1 and (not e2)) and (not e3)) and (not e4)) => (not e4)) 
and (V140_X => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (V140_X => (i_invalid >= 0)) 
and ((((not e1) and (not e2)) and (not e3)) => ((not e1) and (not e2))) 
and ((e1 and (not e2)) => (not e2)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and e3) and (not e4)) and (not e5))) 
and ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) => (not e5)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => ((not e1) and (not e2))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => ((not e1) and (not e2))) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (not e4)) 
and (((not e1) and e2) => (not e1)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (not e3)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => e4) 
and (((e1 and (not e2)) and (not e3)) => e1) 
and ((((not e1) and e2) and (not e3)) => (not e3)) 
and (((not e1) and e2) => e2) 
and (((not e1) and (not e2)) => (not e2)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (not e2)) 
and (((e1 and (not e2)) and (not e3)) => (e1 and (not e2))) 
and ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) => (not e5)) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (not e4)) 
and ((((not e1) and (not e2)) and e3) => (not e2)) 
and ((((not e1) and (not e2)) and e3) => e3) 
and ((((not e1) and (not e2)) and (not e3)) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) => (not e8)) 
and (V58_env => (i_invalid >= 0)) 
and ((e1 and (not e2)) => e1) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and ((((not e1) and (not e2)) and e3) => ((not e1) and (not e2))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (((e1 and (not e2)) and (not e3)) => (not e3)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (V58_env => V140_X) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) = (if V113_garde1 then ((pre V51_invalid) - 1) else (pre V51_invalid))) 
and ((if V114_garde2 then ((pre V51_invalid) - 1) else (pre V51_invalid)) = (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid))) 
and ((if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) = (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid))) 
and ((pre V57_procs) = (pre V121_mem_invalid)) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) = 0) 
and ((if V117_garde5 then 0 else (pre V54_shared)) = (pre V54_shared)) 
and ((if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) = (if V114_garde2 then ((pre V52_dirty) - 1) else (pre V52_dirty))) 
and ((if V120_garde8 then 0 else (pre V53_exclusive)) = (if V115_garde3 then 0 else (pre V53_exclusive))) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) = (pre V53_exclusive)) 
and ((if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) = (if V115_garde3 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared))) 
and ((if V114_garde2 then ((pre V54_shared) + 2) else (pre V54_shared)) = (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared))) 
and (((pre V51_invalid) - 1) <=(if e6 then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid))))) 
and (((pre V51_invalid) - 1) <=(if e1 then (if V113_garde1 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e2 then (if V114_garde2 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e3 then (if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid)))))))) 
and (((pre V51_invalid) - 1) <=(if e3 then (if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid)))))) 
and (((pre V51_invalid) - 1) <=(if e2 then (if V114_garde2 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e3 then (if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid))))))) 
and (((pre V51_invalid) - 1) <=(if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid)))) 
and (((pre V51_invalid) - 1) <=(if V114_garde2 then ((pre V51_invalid) - 1) else (pre V51_invalid))) 
and (((pre V51_invalid) - 1) <=(if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid))) 
and (((pre V51_invalid) - 1) <=(if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid))) 
and (V51_invalid <=V57_procs) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if V120_garde8 then 0 else (pre V53_exclusive))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e3 then (if V115_garde3 then 0 else (pre V53_exclusive)) else (if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive)))))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive)))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(pre V52_dirty)) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=V54_shared) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=V53_exclusive) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e1 then (if V113_garde1 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e3 then (if V115_garde3 then 0 else (pre V53_exclusive)) else (if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))))))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=V52_dirty) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e2 then (if V114_garde2 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)))))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty))))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if V113_garde1 then ((pre V53_exclusive) + 1) else (pre V53_exclusive))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if V118_garde6 then 1 else (pre V52_dirty))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=1) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=((pre V53_exclusive) + 1)) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=((pre V52_dirty) + 1)) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=2) 
and ((if V117_garde5 then 0 else (pre V54_shared)) <=(if e3 then (if V115_garde3 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (if e5 then (if V117_garde5 then 0 else (pre V54_shared)) else (if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared)))))) 
and ((if V117_garde5 then 0 else (pre V54_shared)) <=((pre V54_shared) + (pre V53_exclusive))) 
and ((if V117_garde5 then 0 else (pre V54_shared)) <=(if e5 then (if V117_garde5 then 0 else (pre V54_shared)) else (if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared))))) 
and ((if V117_garde5 then 0 else (pre V54_shared)) <=(if V114_garde2 then ((pre V54_shared) + 2) else (pre V54_shared))) 
and ((if V117_garde5 then 0 else (pre V54_shared)) <=(if e2 then (if V114_garde2 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e3 then (if V115_garde3 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (if e5 then (if V117_garde5 then 0 else (pre V54_shared)) else (if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared))))))) 
and ((if V117_garde5 then 0 else (pre V54_shared)) <=(if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared)))) 
and ((if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) <=(if e2 then (if V114_garde2 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)))))) 
and ((if e3 then (if V115_garde3 then 0 else (pre V53_exclusive)) else (if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))))) <=(if e1 then (if V113_garde1 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e3 then (if V115_garde3 then 0 else (pre V53_exclusive)) else (if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))))))) 
and ((if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)) <=(if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty))))) 
and ((if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)) <=(if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)))) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=(if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty))) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=(if V113_garde1 then ((pre V53_exclusive) + 1) else (pre V53_exclusive))) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=1) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=((pre V53_exclusive) + 1)) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=((pre V52_dirty) + 1)) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=2) 
and ((pre V52_dirty) <=(if V118_garde6 then 1 else (pre V52_dirty))) 
and (1 <=((pre V52_dirty) + 1)) 
and (((pre V53_exclusive) + 1) <=2) 
and (((pre V51_invalid) - 1) <=(if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid))) 
and ((if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) <=(pre V51_invalid)) 
and ((pre V51_invalid) <=(pre V57_procs)) 
and ((if e6 then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid)))) <=(pre V51_invalid)) 
and ((pre V51_invalid) <=(pre V57_procs)) 
and (V51_invalid <=(V51_invalid + V52_dirty)) 
and ((V51_invalid + V52_dirty) <=((V51_invalid + V52_dirty) + V53_exclusive)) 
and (((V51_invalid + V52_dirty) + V53_exclusive) <=(((V51_invalid + V52_dirty) + V53_exclusive) + V54_shared)) 
and ((if e1 then (if V113_garde1 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e2 then (if V114_garde2 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e3 then (if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid))))))) <=(pre V51_invalid)) 
and ((pre V51_invalid) <=(pre V57_procs)) 
and ((if e3 then (if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid))))) <=(pre V51_invalid)) 
and ((pre V51_invalid) <=(pre V57_procs)) 
and ((if e2 then (if V114_garde2 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e3 then (if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 then (if V118_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid)))))) <=(pre V51_invalid)) 
and ((pre V51_invalid) <=(pre V57_procs)) 
and ((if e7 then (if V119_garde7 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid))) <=(pre V51_invalid)) 
and ((pre V51_invalid) <=(pre V57_procs)) 
and ((if V114_garde2 then ((pre V51_invalid) - 1) else (pre V51_invalid)) <=(pre V51_invalid)) 
and ((pre V51_invalid) <=(pre V57_procs)) 
and ((if V115_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) <=(if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid))) 
and ((if e8 then (if V120_garde8 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (pre V51_invalid)) <=(pre V51_invalid)) 
and ((pre V51_invalid) <=(pre V57_procs)) 
and (((pre V53_exclusive) - 1) <=(if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive))) 
and ((if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) <=(if V117_garde5 then 0 else (pre V54_shared))) 
and ((if V117_garde5 then 0 else (pre V54_shared)) <=(if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared))) 
and ((if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared)) <=(if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared))) 
and ((if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) <=(((pre V54_shared) + (pre V53_exclusive)) + 1)) 
and ((((pre V54_shared) + (pre V53_exclusive)) + 1) <=((pre V54_shared) + 2)) 
and (((pre V52_dirty) - 1) <=(if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty))) 
and ((if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) <=(if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty))) 
and ((if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)) <=(pre V52_dirty)) 
and ((pre V52_dirty) <=(if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty))) 
and ((if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) <=((pre V52_dirty) + 1)) 
and ((if V120_garde8 then 0 else (pre V53_exclusive)) <=(if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))) 
and ((if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive)) <=(if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive)))) 
and ((if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))) <=(if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive))) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=((pre V54_shared) + (pre V53_exclusive))) 
and (((pre V54_shared) + (pre V53_exclusive)) <=(((pre V54_shared) + (pre V53_exclusive)) + 1)) 
and ((((pre V54_shared) + (pre V53_exclusive)) + 1) <=((pre V54_shared) + 2)) 
and ((if e3 then (if V115_garde3 then 0 else (pre V53_exclusive)) else (if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))))) <=(if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive)))) 
and ((if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))) <=(if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive))) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=((pre V54_shared) + (pre V53_exclusive))) 
and (((pre V54_shared) + (pre V53_exclusive)) <=(((pre V54_shared) + (pre V53_exclusive)) + 1)) 
and ((((pre V54_shared) + (pre V53_exclusive)) + 1) <=((pre V54_shared) + 2)) 
and ((if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive)))) <=(if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive)))) 
and ((if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))) <=(if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive))) 
and ((if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=((pre V54_shared) + (pre V53_exclusive))) 
and (((pre V54_shared) + (pre V53_exclusive)) <=(((pre V54_shared) + (pre V53_exclusive)) + 1)) 
and ((((pre V54_shared) + (pre V53_exclusive)) + 1) <=((pre V54_shared) + 2)) 
and ((if e3 then (if V115_garde3 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (if e5 then (if V117_garde5 then 0 else (pre V54_shared)) else (if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared))))) <=((pre V54_shared) + 2)) 
and ((if e5 then (if V117_garde5 then 0 else (pre V54_shared)) else (if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared)))) <=(if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared)))) 
and ((if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared))) <=((pre V54_shared) + 2)) 
and ((if V114_garde2 then ((pre V54_shared) + 2) else (pre V54_shared)) <=((pre V54_shared) + 2)) 
and (V54_shared <=(if e2 then (if V114_garde2 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e3 then (if V115_garde3 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (if e5 then (if V117_garde5 then 0 else (pre V54_shared)) else (if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared))))))) 
and ((if e2 then (if V114_garde2 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e3 then (if V115_garde3 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (if e5 then (if V117_garde5 then 0 else (pre V54_shared)) else (if e7 then (if V119_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if e8 then (if V120_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) else (pre V54_shared)) else (pre V54_shared)))))) <=((pre V54_shared) + 2)) 
and (V53_exclusive <=(if e1 then (if V113_garde1 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e3 then (if V115_garde3 then 0 else (pre V53_exclusive)) else (if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive))))))) 
and ((if e1 then (if V113_garde1 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e3 then (if V115_garde3 then 0 else (pre V53_exclusive)) else (if e4 then (if V116_garde4 then ((pre V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if V117_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if e8 then (if V120_garde8 then 0 else (pre V53_exclusive)) else (pre V53_exclusive)))))) <=(if V113_garde1 then ((pre V53_exclusive) + 1) else (pre V53_exclusive))) 
and ((if V113_garde1 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) <=1) 
and (1 <=((pre V53_exclusive) + 1)) 
and (((pre V53_exclusive) + 1) <=(((pre V54_shared) + (pre V53_exclusive)) + 1)) 
and ((((pre V54_shared) + (pre V53_exclusive)) + 1) <=((pre V54_shared) + 2)) 
and (V52_dirty <=(if e2 then (if V114_garde2 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)))))) 
and ((if e2 then (if V114_garde2 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty))))) <=(if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty))))) 
and ((if e4 then (if V116_garde4 then ((pre V52_dirty) + 1) else (pre V52_dirty)) else (if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty)))) <=((pre V52_dirty) + 1)) 
and ((if e6 then (if V118_garde6 then 1 else (pre V52_dirty)) else (if e7 then (if V119_garde7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) else (pre V52_dirty))) <=(if V118_garde6 then 1 else (pre V52_dirty))) 
and ((if V118_garde6 then 1 else (pre V52_dirty)) <=((pre V52_dirty) + 1)) 
and (2 <=((pre V54_shared) + 2)) 
and  true ));
tel.

