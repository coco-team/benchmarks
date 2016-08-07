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
  V48_invalid: int;
  V49_dirty: int;
  V50_exclusive: int;
  V51_shared: int;
  V52_RT: bool;
  V53_A1: bool;
  V54_A2: bool;
  V55_env: bool;
  V106_garde1: bool;
  V107_garde2: bool;
  V108_garde3: bool;
  V109_garde4: bool;
  V110_garde5: bool;
  V111_garde6: bool;
  V112_garde7: bool;
  V113_garde8: bool;
  V114_mem_invalid: int;
  V132_X: bool;

let
  OK = ((V53_A1 and V54_A2) and V52_RT);
  V48_invalid = (V114_mem_invalid -> (if e1 then (if V106_garde1 then ((pre 
  V48_invalid) - 1) else (pre V48_invalid)) else (if e2 then (if V107_garde2 
  then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e3 then (if 
  V108_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e6 
  then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) 
  else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre 
  V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) 
  else (pre V48_invalid)) else (pre V48_invalid))))))));
  V49_dirty = (0 -> (if e2 then (if V107_garde2 then ((pre V49_dirty) - 1) else 
  (pre V49_dirty)) else (if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) 
  else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre 
  V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else 
  (pre V49_dirty)) else (pre V49_dirty))))));
  V50_exclusive = (0 -> (if e1 then (if V106_garde1 then ((pre V50_exclusive) + 
  1) else (pre V50_exclusive)) else (if e3 then (if V108_garde3 then 0 else 
  (pre V50_exclusive)) else (if e4 then (if V109_garde4 then ((pre 
  V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if 
  V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if 
  e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre 
  V50_exclusive)))))));
  V51_shared = (0 -> (if e2 then (if V107_garde2 then ((pre V51_shared) + 2) 
  else (pre V51_shared)) else (if e3 then (if V108_garde3 then (((pre 
  V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (if e5 
  then (if V110_garde5 then (pre 0) else (pre V51_shared)) else (if e7 then (if 
  V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 
  then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else 
  (pre V51_shared)) else (pre V51_shared)))))));
  V52_RT = (V55_env => (V49_dirty < 2));
  V53_A1 = (V50_exclusive >= 0);
  V54_A2 = (V49_dirty >= 0);
  V55_env = (V132_X -> (V132_X and (pre V55_env)));
  V106_garde1 = (((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and (
  (pre V51_shared) = 0)) and ((pre V50_exclusive) = 0));
  V107_garde2 = (((pre V48_invalid) >= 1) and ((pre V49_dirty) >= 1));
  V108_garde3 = (((pre V48_invalid) >= 1) and (((pre V51_shared) + (pre 
  V50_exclusive)) >= 1));
  V109_garde4 = ((pre V50_exclusive) >= 1);
  V110_garde5 = ((pre V51_shared) = 1);
  V111_garde6 = (((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and (
  (pre V51_shared) = 0)) and ((pre V50_exclusive) = 0));
  V112_garde7 = (((pre V48_invalid) >= 1) and ((pre V49_dirty) >= 1));
  V113_garde8 = (((pre V48_invalid) >= 1) and (((pre V51_shared) + (pre 
  V50_exclusive)) >= 1));
  V114_mem_invalid = (i_invalid -> (pre V114_mem_invalid));
  V132_X = (((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) 
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



-- 390 implications. 
assert (true -> (((V49_dirty >= 0) = V54_A2) 
and (V54_A2 = true) 
and (true = (V53_A1 and V54_A2)) 
and ((V53_A1 and V54_A2) = (V50_exclusive >= 0)) 
and ((V50_exclusive >= 0) = V53_A1) 
and (V52_RT = (V55_env => (V49_dirty < 2))) 
and ((V55_env => (V49_dirty < 2)) = ((V53_A1 and V54_A2) and V52_RT)) 
and ((((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) and ((pre V50_exclusive) = 0)) = V111_garde6) 
and (V111_garde6 = V106_garde1) 
and (V132_X = (((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8)) and (i_invalid >= 0))) 
and (V109_garde4 = ((pre V50_exclusive) >= 1)) 
and (V113_garde8 = V108_garde3) 
and (V108_garde3 = (((pre V48_invalid) >= 1) and (((pre V51_shared) + (pre V50_exclusive)) >= 1))) 
and (V107_garde2 = (((pre V48_invalid) >= 1) and ((pre V49_dirty) >= 1))) 
and ((((pre V48_invalid) >= 1) and ((pre V49_dirty) >= 1)) = V112_garde7) 
and (false = ((pre V51_shared) = 1)) 
and (((pre V51_shared) = 1) = V110_garde5) 
and ((V132_X and (pre V55_env)) => V55_env) 
and (V109_garde4 => (((pre V51_shared) + (pre V50_exclusive)) >= 1)) 
and (((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) => (((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0))) 
and (((pre V49_dirty) = 0) => (V49_dirty < 2)) 
and (((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) => V52_RT) 
and (((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) => ((pre V51_shared) = 0)) 
and ((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) => (V49_dirty < 2)) 
and ((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) => V52_RT) 
and ((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) => ((pre V48_invalid) >= 1)) 
and ((((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) and ((pre V50_exclusive) = 0)) => ((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0))) 
and (V107_garde2 => ((pre V48_invalid) >= 1)) 
and ((V49_dirty < 2) => V52_RT) 
and (V107_garde2 => ((pre V49_dirty) >= 1)) 
and (V113_garde8 => (((pre V51_shared) + (pre V50_exclusive)) >= 1)) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) 
and (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (V113_garde8 => ((pre V48_invalid) >= 1)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7)) 
and ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7))) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and ((((e1 and (not e2)) and (not e3)) and (not e4)) => ((e1 and (not e2)) and (not e3))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e6)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e6)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e6)) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7))) 
and ((((not e1) and e2) and (not e3)) => ((not e1) and e2)) 
and ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) => ((((not e1) and (not e2)) and (not e3)) and e4)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e3)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e2)) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => (not e2)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e2)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e1)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e6)) 
and (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e1)) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => (not e6)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e6)) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e6)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e6)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e2)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and ((((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) and ((pre V50_exclusive) = 0)) => ((pre V49_dirty) = 0)) 
and ((((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) and ((pre V50_exclusive) = 0)) => V52_RT) 
and ((((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) and ((pre V50_exclusive) = 0)) => ((pre V51_shared) = 0)) 
and ((((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) and ((pre V50_exclusive) = 0)) => (V49_dirty < 2)) 
and ((((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and ((pre V51_shared) = 0)) and ((pre V50_exclusive) = 0)) => ((pre V50_exclusive) = 0)) 
and ((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) => ((pre V49_dirty) = 0)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => (not e7)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5)) 
and (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (((e1 and (not e2)) and (not e3)) and (not e4))) 
and ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) => ((((not e1) and (not e2)) and e3) and (not e4))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (((not e1) and (not e2)) and (not e3))) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and e4) and (not e5))) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e5)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e2)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e3)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e2)) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e1)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e6)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (not e2)) 
and ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) => (not e5)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (not e2)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e2)) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (V55_env => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e5)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => e6) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e4)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) => (not e6)) 
and (((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) => (not e7)) 
and ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e1)) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (((not e1) and (not e2)) and (not e3))) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e4)) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e3)) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e3)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e3)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e2)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e1)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e4)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e6)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (not e1)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (not e4)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (V55_env => V132_X) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => (not e5)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => (not e2)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e5)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => (not e7)) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => e2) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (not e3)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => e6) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => (not e3)) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and e2) and (not e3)) and (not e4)) and (not e5))) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e5)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e4)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e7)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => e8) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) => ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e1)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e6)) 
and (((not e1) and (not e2)) => (not e2)) 
and ((((not e1) and (not e2)) and e3) => (not e2)) 
and ((((not e1) and (not e2)) and e3) => e3) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => e3) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (not e8)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) => (not e8)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e2)) 
and ((((e1 and (not e2)) and (not e3)) and (not e4)) => (not e4)) 
and (((e1 and (not e2)) and (not e3)) => (e1 and (not e2))) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => ((((not e1) and e2) and (not e3)) and (not e4))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((not e1) and e2) and (not e3)) and (not e4))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e4)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e4)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e1)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => e5) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and (V132_X => ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8))) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and e3) and (not e4)) and (not e5))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => (not e4)) 
and (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and ((e1 and (not e2)) => (not e2)) 
and ((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) => (not e8)) 
and ((((not e1) and (not e2)) and (not e3)) => ((not e1) and (not e2))) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => e4) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (((not e1) and (not e2)) and e3)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (((not e1) and e2) and (not e3))) 
and ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) => (not e5)) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (not e1)) 
and (V132_X => (i_invalid >= 0)) 
and ((((not e1) and (not e2)) and e3) => (not e1)) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (not e4)) 
and ((e1 and (not e2)) => e1) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (not e3)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (not e4)) 
and ((((not e1) and e2) and (not e3)) => (not e3)) 
and (((not e1) and e2) => e2) 
and (((not e1) and e2) => (not e1)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => e7) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => ((not e1) and (not e2))) 
and ((((not e1) and (not e2)) and e3) => ((not e1) and (not e2))) 
and ((V132_X and (pre V55_env)) => (pre V55_env)) 
and ((((not e1) and (not e2)) and (not e3)) => (not e3)) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (not e4)) 
and (((not e1) and (not e2)) => (not e1)) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) = 0) 
and ((pre V51_shared) = (if V110_garde5 then 0 else (pre V51_shared))) 
and ((if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) = (if V107_garde2 then ((pre V51_shared) + 2) else (pre V51_shared))) 
and ((if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) = (if V108_garde3 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared))) 
and ((if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty)) = (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty))) 
and ((if V113_garde8 then 0 else (pre V50_exclusive)) = (if V108_garde3 then 0 else (pre V50_exclusive))) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) = (pre V50_exclusive)) 
and ((if V106_garde1 then ((pre V48_invalid) - 1) else (pre V48_invalid)) = (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid))) 
and ((if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) = (if V108_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid))) 
and ((if V107_garde2 then ((pre V48_invalid) - 1) else (pre V48_invalid)) = (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if V113_garde8 then 0 else (pre V50_exclusive))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(pre V49_dirty)) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e3 then (if V108_garde3 then 0 else (pre V50_exclusive)) else (if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive)))))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive)))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=V50_exclusive) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e1 then (if V106_garde1 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e3 then (if V108_garde3 then 0 else (pre V50_exclusive)) else (if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))))))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=V49_dirty) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e2 then (if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)))))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty))))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if V111_garde6 then 1 else (pre V49_dirty))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(if V106_garde1 then ((pre V50_exclusive) + 1) else (pre V50_exclusive))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=1) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=((pre V49_dirty) + 1)) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=((pre V50_exclusive) + 1)) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=2) 
and ((pre V51_shared) <=(if e3 then (if V108_garde3 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (if e5 then (if V110_garde5 then 0 else (pre V51_shared)) else (if e7 then (if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared)))))) 
and ((pre V51_shared) <=(if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared))) 
and ((pre V51_shared) <=(if e2 then (if V107_garde2 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e3 then (if V108_garde3 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (if e5 then (if V110_garde5 then 0 else (pre V51_shared)) else (if e7 then (if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared))))))) 
and ((pre V51_shared) <=(if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared))) 
and ((pre V51_shared) <=(if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared))) 
and ((pre V51_shared) <=((pre V51_shared) + (pre V50_exclusive))) 
and ((pre V51_shared) <=(((pre V51_shared) + (pre V50_exclusive)) + 1)) 
and ((if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty)) <=(if e2 then (if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)))))) 
and ((if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)) <=(if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty))))) 
and ((if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)) <=(if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)))) 
and ((pre V49_dirty) <=(if V111_garde6 then 1 else (pre V49_dirty))) 
and ((if e3 then (if V108_garde3 then 0 else (pre V50_exclusive)) else (if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))))) <=(if e1 then (if V106_garde1 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e3 then (if V108_garde3 then 0 else (pre V50_exclusive)) else (if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))))))) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=(if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty))) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=(if V106_garde1 then ((pre V50_exclusive) + 1) else (pre V50_exclusive))) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=1) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=((pre V49_dirty) + 1)) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=((pre V50_exclusive) + 1)) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=2) 
and (1 <=((pre V50_exclusive) + 1)) 
and (1 <=(((pre V51_shared) + (pre V50_exclusive)) + 1)) 
and (1 <=2) 
and (1 <=((pre V51_shared) + 2)) 
and (((pre V50_exclusive) + 1) <=2) 
and (((pre V48_invalid) - 1) <=(if e6 then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid))))) 
and (((pre V48_invalid) - 1) <=(if e3 then (if V108_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e6 then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid)))))) 
and (((pre V48_invalid) - 1) <=(if e1 then (if V106_garde1 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e2 then (if V107_garde2 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e3 then (if V108_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e6 then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid)))))))) 
and (((pre V48_invalid) - 1) <=(if e2 then (if V107_garde2 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e3 then (if V108_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e6 then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid))))))) 
and (((pre V48_invalid) - 1) <=(if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid))) 
and (((pre V48_invalid) - 1) <=(if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid)))) 
and (((pre V48_invalid) - 1) <=(if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid))) 
and (((pre V48_invalid) - 1) <=(if V107_garde2 then ((pre V48_invalid) - 1) else (pre V48_invalid))) 
and (((pre V49_dirty) - 1) <=(if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty))) 
and ((if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty)) <=(if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty))) 
and ((if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)) <=(pre V49_dirty)) 
and ((pre V49_dirty) <=(if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty))) 
and ((if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) <=((pre V49_dirty) + 1)) 
and (((pre V50_exclusive) - 1) <=(if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive))) 
and ((if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) <=(pre V51_shared)) 
and ((pre V51_shared) <=(if e5 then (if V110_garde5 then 0 else (pre V51_shared)) else (if e7 then (if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared))))) 
and ((if e5 then (if V110_garde5 then 0 else (pre V51_shared)) else (if e7 then (if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared)))) <=(if e7 then (if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared)))) 
and ((if e7 then (if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared))) <=((pre V51_shared) + 2)) 
and ((if e3 then (if V108_garde3 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (if e5 then (if V110_garde5 then 0 else (pre V51_shared)) else (if e7 then (if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared))))) <=((pre V51_shared) + 2)) 
and ((if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) <=((pre V51_shared) + 2)) 
and ((if e2 then (if V107_garde2 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e3 then (if V108_garde3 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (if e5 then (if V110_garde5 then 0 else (pre V51_shared)) else (if e7 then (if V112_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared)))))) <=((pre V51_shared) + 2)) 
and ((if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive)))) <=(if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive)))) 
and ((if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))) <=(if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive))) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=((pre V51_shared) + (pre V50_exclusive))) 
and (((pre V51_shared) + (pre V50_exclusive)) <=(((pre V51_shared) + (pre V50_exclusive)) + 1)) 
and ((((pre V51_shared) + (pre V50_exclusive)) + 1) <=((pre V51_shared) + 2)) 
and ((if e8 then (if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (pre V51_shared)) <=(if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared))) 
and ((if V113_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) else (pre V51_shared)) <=(((pre V51_shared) + (pre V50_exclusive)) + 1)) 
and ((((pre V51_shared) + (pre V50_exclusive)) + 1) <=((pre V51_shared) + 2)) 
and ((if V113_garde8 then 0 else (pre V50_exclusive)) <=(if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))) 
and ((if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive)) <=(if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive)))) 
and ((if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))) <=(if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive))) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=((pre V51_shared) + (pre V50_exclusive))) 
and (((pre V51_shared) + (pre V50_exclusive)) <=(((pre V51_shared) + (pre V50_exclusive)) + 1)) 
and ((((pre V51_shared) + (pre V50_exclusive)) + 1) <=((pre V51_shared) + 2)) 
and ((if e3 then (if V108_garde3 then 0 else (pre V50_exclusive)) else (if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))))) <=(if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive)))) 
and ((if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))) <=(if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive))) 
and ((if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=((pre V51_shared) + (pre V50_exclusive))) 
and (((pre V51_shared) + (pre V50_exclusive)) <=(((pre V51_shared) + (pre V50_exclusive)) + 1)) 
and ((((pre V51_shared) + (pre V50_exclusive)) + 1) <=((pre V51_shared) + 2)) 
and (V50_exclusive <=(if e1 then (if V106_garde1 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e3 then (if V108_garde3 then 0 else (pre V50_exclusive)) else (if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive))))))) 
and ((if e1 then (if V106_garde1 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e3 then (if V108_garde3 then 0 else (pre V50_exclusive)) else (if e4 then (if V109_garde4 then ((pre V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if V110_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if e8 then (if V113_garde8 then 0 else (pre V50_exclusive)) else (pre V50_exclusive)))))) <=(if V106_garde1 then ((pre V50_exclusive) + 1) else (pre V50_exclusive))) 
and ((if V106_garde1 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) <=1) 
and (1 <=((pre V49_dirty) + 1)) 
and (V49_dirty <=(if e2 then (if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)))))) 
and ((if e2 then (if V107_garde2 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty))))) <=(if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty))))) 
and ((if e4 then (if V109_garde4 then ((pre V49_dirty) + 1) else (pre V49_dirty)) else (if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty)))) <=((pre V49_dirty) + 1)) 
and ((if e6 then (if V111_garde6 then 1 else (pre V49_dirty)) else (if e7 then (if V112_garde7 then ((pre V49_dirty) - 1) else (pre V49_dirty)) else (pre V49_dirty))) <=(if V111_garde6 then 1 else (pre V49_dirty))) 
and ((if V111_garde6 then 1 else (pre V49_dirty)) <=((pre V49_dirty) + 1)) 
and (((pre V50_exclusive) + 1) <=(((pre V51_shared) + (pre V50_exclusive)) + 1)) 
and ((((pre V51_shared) + (pre V50_exclusive)) + 1) <=((pre V51_shared) + 2)) 
and (2 <=((pre V51_shared) + 2)) 
and (((pre V48_invalid) - 1) <=(if V106_garde1 then ((pre V48_invalid) - 1) else (pre V48_invalid))) 
and ((if V106_garde1 then ((pre V48_invalid) - 1) else (pre V48_invalid)) <=(pre V48_invalid)) 
and ((pre V48_invalid) <=(pre V114_mem_invalid)) 
and ((if e6 then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid)))) <=(pre V48_invalid)) 
and ((pre V48_invalid) <=(pre V114_mem_invalid)) 
and ((if e3 then (if V108_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e6 then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid))))) <=(pre V48_invalid)) 
and ((pre V48_invalid) <=(pre V114_mem_invalid)) 
and ((if e1 then (if V106_garde1 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e2 then (if V107_garde2 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e3 then (if V108_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e6 then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid))))))) <=(pre V48_invalid)) 
and ((pre V48_invalid) <=(pre V114_mem_invalid)) 
and ((if e2 then (if V107_garde2 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e3 then (if V108_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e6 then (if V111_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid)))))) <=(pre V48_invalid)) 
and ((pre V48_invalid) <=(pre V114_mem_invalid)) 
and ((if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) <=(if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid))) 
and ((if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid)) <=(pre V48_invalid)) 
and ((pre V48_invalid) <=(pre V114_mem_invalid)) 
and ((if e7 then (if V112_garde7 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e8 then (if V113_garde8 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (pre V48_invalid))) <=(pre V48_invalid)) 
and ((pre V48_invalid) <=(pre V114_mem_invalid)) 
and ((if V107_garde2 then ((pre V48_invalid) - 1) else (pre V48_invalid)) <=(pre V48_invalid)) 
and ((pre V48_invalid) <=(pre V114_mem_invalid)) 
and  true ));
tel.

