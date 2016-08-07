node top
  (e1: bool;
  e2: bool;
  e3: bool;
  e4: bool;
  e5: bool;
  e6: bool;
  init_p1: int;
  init_p2: int)
returns
  (OK: bool);

var
  V49_x1: int;
  V50_x2: int;
  V51_x3: int;
  V52_x4: int;
  V53_x5: int;
  V54_x6: int;
  V55_x7: int;
  V56_p1: int;
  V57_p2: int;
  V58_env: bool;
  V119_g1: bool;
  V120_g2: bool;
  V121_g3: bool;
  V122_g4: bool;
  V123_g5: bool;
  V124_g6: bool;
  V139_X: bool;
  V144_Sofar: bool;
  V152_First: int;
  V160_First: int;
  V168_First: int;
  V176_First: int;

let
  OK = (V58_env => (V53_x5 < 7));
  V49_x1 = (0 -> (if e1 then (if V119_g1 then ((pre V49_x1) + 1) else (pre 
  V49_x1)) else (if e2 then (if V120_g2 then ((pre V49_x1) - 1) else (pre 
  V49_x1)) else (pre V49_x1))));
  V50_x2 = (0 -> (if e2 then (if V120_g2 then ((pre V50_x2) + 1) else (pre 
  V50_x2)) else (if e3 then (if V121_g3 then ((pre V50_x2) - 1) else (pre 
  V50_x2)) else (pre V50_x2))));
  V51_x3 = (0 -> (if e3 then (if V121_g3 then ((pre V51_x3) + 1) else (pre 
  V51_x3)) else (if e4 then (if V122_g4 then ((pre V51_x3) - 1) else (pre 
  V51_x3)) else (pre V51_x3))));
  V52_x4 = (0 -> (if e4 then (if V122_g4 then ((pre V52_x4) + 1) else (pre 
  V52_x4)) else (if e5 then (if V122_g4 then ((pre V52_x4) - 1) else (pre 
  V52_x4)) else (pre V52_x4))));
  V53_x5 = (0 -> (if e5 then (if V123_g5 then ((pre V53_x5) + 1) else (pre 
  V53_x5)) else (if e6 then (if V124_g6 then ((pre V53_x5) - 1) else (pre 
  V53_x5)) else (pre V53_x5))));
  V54_x6 = (V56_p1 -> (if e1 then (if V119_g1 then ((pre V54_x6) - 1) else (pre 
  V54_x6)) else (if e3 then (if V121_g3 then ((pre V54_x6) + 1) else (pre 
  V54_x6)) else (if e4 then (if V122_g4 then ((pre V54_x6) - 1) else (pre 
  V54_x6)) else (if e6 then (if V124_g6 then ((pre V54_x6) + 1) else (pre 
  V54_x6)) else (pre V54_x6))))));
  V55_x7 = (V57_p2 -> (if e2 then (if V120_g2 then ((pre V55_x7) - 1) else (pre 
  V55_x7)) else (if e5 then (if V123_g5 then ((pre V55_x7) + 1) else (pre 
  V55_x7)) else (pre V55_x7))));
  V56_p1 = (init_p1 -> (pre V56_p1));
  V57_p2 = (init_p2 -> (pre V57_p2));
  V58_env = ((((V144_Sofar and (0 <= V152_First)) and (0 <= V160_First)) and (
  V168_First < 1000)) and (V176_First < 1000));
  V119_g1 = (false -> ((pre V54_x6) >= 1));
  V120_g2 = (false -> (((pre V49_x1) >= 1) and ((pre V55_x7) >= 1)));
  V121_g3 = (false -> ((pre V50_x2) >= 1));
  V122_g4 = (false -> (((pre V51_x3) >= 1) and ((pre V54_x6) >= 1)));
  V123_g5 = (false -> ((pre V52_x4) >= 1));
  V124_g6 = (false -> ((pre V53_x5) >= 1));
  V139_X = ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and 
  (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) 
  and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not 
  e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and 
  (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and 
  (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) 
  and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not 
  e2)) and (not e3)) and (not e4)) and (not e5)) and e6));
  V144_Sofar = (V139_X -> (V139_X and (pre V144_Sofar)));
  V152_First = (init_p1 -> (pre V152_First));
  V160_First = (init_p2 -> (pre V160_First));
  V168_First = (init_p1 -> (pre V168_First));
  V176_First = (init_p2 -> (pre V176_First));
    --%PROPERTY OK=true;


tel.

