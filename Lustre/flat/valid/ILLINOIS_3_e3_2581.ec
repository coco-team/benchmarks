node top
  (e1: bool;
  e2: bool;
  e3: bool;
  e4: bool;
  e5: bool;
  e6: bool;
  e7: bool;
  e8: bool;
  e9: bool;
  init_invalid: int)
returns
  (OK: bool);

var
  V54_invalid: int;
  V55_dirty: int;
  V56_exclusive: int;
  V57_shared: int;
  V58_env: bool;
  V115_g1: bool;
  V116_g2: bool;
  V117_g3: bool;
  V118_g4: bool;
  V119_g5: bool;
  V120_g6: bool;
  V121_g7: bool;
  V122_g8: bool;
  V123_g9: bool;
  V143_X: bool;
  V157_First: int;

let
  OK = (V58_env => ((((V54_invalid - V55_dirty) + V56_exclusive) + V57_shared) 
  = V157_First));
  V54_invalid = ((if (init_invalid > 0) then init_invalid else (1 - 
  init_invalid)) -> (if e1 then (if V115_g1 then ((pre V54_invalid) - 1) else 
  (pre V54_invalid)) else (if e2 then (if V116_g2 then ((pre V54_invalid) - 1) 
  else (pre V54_invalid)) else (if e3 then (if V117_g3 then ((pre V54_invalid) 
  - 1) else (pre V54_invalid)) else (if e5 then (if V119_g5 then (((pre 
  V54_invalid) + (pre V57_shared)) - 1) else (pre V54_invalid)) else (if e6 
  then (if V120_g6 then (((((pre V54_invalid) + (pre V55_dirty)) + (pre 
  V57_shared)) + (pre V56_exclusive)) - 1) else (pre V54_invalid)) else (if e7 
  then (if V121_g7 then ((pre V54_invalid) + 1) else (pre V54_invalid)) else 
  (if e8 then (if V122_g8 then ((pre V54_invalid) + 1) else (pre V54_invalid)) 
  else (if e9 then (if V123_g9 then ((pre V54_invalid) + 1) else (pre 
  V54_invalid)) else (pre V54_invalid))))))))));
  V55_dirty = (0 -> (if e2 then (if V116_g2 then ((pre V55_dirty) - 1) else 
  (pre V55_dirty)) else (if e4 then (if V118_g4 then ((pre V55_dirty) + 1) else 
  (pre V55_dirty)) else (if e5 then (if V119_g5 then ((pre V55_dirty) + 1) else 
  (pre V55_dirty)) else (if e6 then (if V120_g6 then 1 else (pre V55_dirty)) 
  else (if e7 then (if V121_g7 then ((pre V55_dirty) - 1) else (pre V55_dirty)) 
  else (pre V55_dirty)))))));
  V56_exclusive = (0 -> (if e1 then (if V115_g1 then ((pre V56_exclusive) + 1) 
  else (pre V56_exclusive)) else (if e3 then (if V117_g3 then (pre 0) else (pre 
  V56_exclusive)) else (if e4 then (if V118_g4 then ((pre V56_exclusive) - 1) 
  else (pre V56_exclusive)) else (if e6 then (if V120_g6 then 0 else (pre 
  V56_exclusive)) else (if e9 then (if V123_g9 then ((pre V56_exclusive) - 1) 
  else (pre V56_exclusive)) else (pre V56_exclusive)))))));
  V57_shared = (0 -> (if e2 then (if V116_g2 then ((pre V57_shared) + 2) else 
  (pre V57_shared)) else (if e3 then (if V117_g3 then (((pre V57_shared) + (pre 
  V56_exclusive)) + 1) else (pre V57_shared)) else (if e5 then (if V119_g5 then 
  0 else (pre V57_shared)) else (if e6 then (if V120_g6 then 0 else (pre 
  V57_shared)) else (if e8 then (if V122_g8 then ((pre V57_shared) - 1) else 
  (pre V57_shared)) else (pre V57_shared)))))));
  V58_env = (V143_X -> (V143_X and (pre V58_env)));
  V115_g1 = (((((pre V54_invalid) >= 1) and ((pre V55_dirty) = 0)) and ((pre 
  V57_shared) = 0)) and ((pre V56_exclusive) = 0));
  V116_g2 = (((pre V54_invalid) >= 1) and ((pre V55_dirty) >= 1));
  V117_g3 = (((pre V54_invalid) >= 1) and (((pre V57_shared) + (pre 
  V56_exclusive)) >= 1));
  V118_g4 = ((pre V56_exclusive) >= 1);
  V119_g5 = ((pre V57_shared) >= 1);
  V120_g6 = ((pre V54_invalid) >= 1);
  V121_g7 = ((pre V55_dirty) >= 1);
  V122_g8 = ((pre V57_shared) >= 1);
  V123_g9 = ((pre V56_exclusive) >= 1);
  V143_X = (((((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) 
  and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) or ((((
  ((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) 
  and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and 
  (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8
  )) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and 
  (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((
  ((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and 
  (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and 
  (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and 
  (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and 
  (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not 
  e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and 
  e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not 
  e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not 
  e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not 
  e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_invalid > 0
  ));
  V157_First = (init_invalid -> (pre V157_First));
  --%PROPERTY OK;


tel.

