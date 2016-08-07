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
  V52_env: bool;
  V104_garde1: bool;
  V105_garde2: bool;
  V106_garde3: bool;
  V107_garde4: bool;
  V108_garde5: bool;
  V109_garde6: bool;
  V110_garde7: bool;
  V111_garde8: bool;
  V112_mem_invalid: int;
  V130_X: bool;

let
  OK = (V52_env => (V50_exclusive < 2));
  V48_invalid = (V112_mem_invalid -> (if e1 then (if V104_garde1 then ((pre 
  V48_invalid) - 1) else (pre V48_invalid)) else (if e2 then (if V105_garde2 
  then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e3 then (if 
  V106_garde3 then ((pre V48_invalid) - 1) else (pre V48_invalid)) else (if e6 
  then (if V109_garde6 then ((pre V48_invalid) - 1) else (pre V48_invalid)) 
  else (if e7 then (if V110_garde7 then ((pre V48_invalid) - 1) else (pre 
  V48_invalid)) else (if e8 then (if V111_garde8 then ((pre V48_invalid) - 1) 
  else (pre V48_invalid)) else (pre V48_invalid))))))));
  V49_dirty = (0 -> (if e2 then (if V105_garde2 then ((pre V49_dirty) - 1) else 
  (pre V49_dirty)) else (if e4 then (if V107_garde4 then ((pre V49_dirty) + 1) 
  else (pre V49_dirty)) else (if e6 then (if V109_garde6 then 1 else (pre 
  V49_dirty)) else (if e7 then (if V110_garde7 then ((pre V49_dirty) - 1) else 
  (pre V49_dirty)) else (pre V49_dirty))))));
  V50_exclusive = (0 -> (if e1 then (if V104_garde1 then ((pre V50_exclusive) + 
  1) else (pre V50_exclusive)) else (if e3 then (if V106_garde3 then 0 else 
  (pre V50_exclusive)) else (if e4 then (if V107_garde4 then ((pre 
  V50_exclusive) - 1) else (pre V50_exclusive)) else (if e5 then (if 
  V108_garde5 then ((pre V50_exclusive) + 1) else (pre V50_exclusive)) else (if 
  e8 then (if V111_garde8 then 0 else (pre V50_exclusive)) else (pre 
  V50_exclusive)))))));
  V51_shared = (0 -> (if e2 then (if V105_garde2 then ((pre V51_shared) + 2) 
  else (pre V51_shared)) else (if e3 then (if V106_garde3 then ((((pre 
  V51_shared) + 1) + (pre V50_exclusive)) + 1) else (pre V51_shared)) else (if 
  e5 then (if V108_garde5 then (pre 0) else (pre V51_shared)) else (if e7 then 
  (if V110_garde7 then ((pre V51_shared) + 2) else (pre V51_shared)) else (if 
  e8 then (if V111_garde8 then (((pre V51_shared) + (pre V50_exclusive)) + 1) 
  else (pre V51_shared)) else (pre V51_shared)))))));
  V52_env = (V130_X -> (V130_X and (pre V52_env)));
  V104_garde1 = (((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and (
  (pre V51_shared) = 0)) and ((pre V50_exclusive) = 0));
  V105_garde2 = (((pre V48_invalid) >= 1) and ((pre V49_dirty) >= 1));
  V106_garde3 = (((pre V48_invalid) >= 1) and (((pre V51_shared) + (pre 
  V50_exclusive)) >= 1));
  V107_garde4 = ((pre V50_exclusive) >= 1);
  V108_garde5 = ((pre V51_shared) = 1);
  V109_garde6 = (((((pre V48_invalid) >= 1) and ((pre V49_dirty) = 0)) and (
  (pre V51_shared) = 0)) and ((pre V50_exclusive) = 0));
  V110_garde7 = (((pre V48_invalid) >= 1) and ((pre V49_dirty) >= 1));
  V111_garde8 = (((pre V48_invalid) >= 1) and (((pre V51_shared) + (pre 
  V50_exclusive)) >= 1));
  V112_mem_invalid = (i_invalid -> (pre V112_mem_invalid));
  V130_X = ((((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) 
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
  (not e6)) and (not e7)) and e8)) and (i_invalid >= 0)) and (i_invalid < 5));
  --%PROPERTY OK;


tel.

