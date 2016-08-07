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
  V118_g1: bool;
  V119_g2: bool;
  V120_g3: bool;
  V121_g4: bool;
  V122_g5: bool;
  V123_g6: bool;
  V138_X: bool;
  V143_Sofar: bool;
  V151_First: int;
  V159_First: int;
  V167_First: int;
  V175_First: int;

let
  OK = (V58_env => (V53_x5 < 1));
  V49_x1 = (0 -> (if e1 then (if V118_g1 then ((pre V49_x1) + 1) else (pre 
  V49_x1)) else (if e2 then (if V119_g2 then ((pre V49_x1) - 1) else (pre 
  V49_x1)) else (pre V49_x1))));
  V50_x2 = (0 -> (if e2 then (if V119_g2 then ((pre V50_x2) + 1) else (pre 
  V50_x2)) else (if e3 then (if V120_g3 then ((pre V50_x2) - 1) else (pre 
  V50_x2)) else (pre V50_x2))));
  V51_x3 = (0 -> (if e3 then (if V120_g3 then ((pre V51_x3) + 1) else (pre 
  V51_x3)) else (if e4 then (if V121_g4 then ((pre V51_x3) - 1) else (pre 
  V51_x3)) else (pre V51_x3))));
  V52_x4 = (0 -> (if e4 then (if V121_g4 then ((pre V52_x4) + 1) else (pre 
  V52_x4)) else (if e5 then (if V121_g4 then ((pre V52_x4) - 1) else (pre 
  V52_x4)) else (pre V52_x4))));
  V53_x5 = (0 -> (if e5 then (if V122_g5 then ((pre V53_x5) + 1) else (pre 
  V53_x5)) else (if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre 
  V53_x5)) else (pre V53_x5))));
  V54_x6 = (V56_p1 -> (if e1 then (if V118_g1 then ((pre V54_x6) - 1) else (pre 
  V54_x6)) else (if e3 then (if V120_g3 then ((pre V54_x6) + 1) else (pre 
  V54_x6)) else (if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre 
  V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre 
  V54_x6)) else (pre V54_x6))))));
  V55_x7 = (V57_p2 -> (if e2 then (if V119_g2 then ((pre V55_x7) - 1) else (pre 
  V55_x7)) else (if e5 then (if V122_g5 then ((pre V55_x7) + 1) else (pre 
  V55_x7)) else (pre V55_x7))));
  V56_p1 = (init_p1 -> (pre V56_p1));
  V57_p2 = (init_p2 -> (pre V57_p2));
  V58_env = ((((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) and (
  V167_First < 1000)) and (V175_First < 1000));
  V118_g1 = (false -> ((pre V54_x6) >= 1));
  V119_g2 = (false -> (((pre V49_x1) >= 1) and ((pre V55_x7) >= 1)));
  V120_g3 = (false -> ((pre V50_x2) >= 1));
  V121_g4 = (false -> (((pre V51_x3) >= 1) and ((pre V54_x6) >= 1)));
  V122_g5 = (false -> ((pre V52_x4) >= 1));
  V123_g6 = (false -> ((pre V53_x5) >= 1));
  V138_X = ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and 
  (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) 
  and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not 
  e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and 
  (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and 
  (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) 
  and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not 
  e2)) and (not e3)) and (not e4)) and (not e5)) and e6));
  V143_Sofar = (V138_X -> (V138_X and (pre V143_Sofar)));
  V151_First = (init_p1 -> (pre V151_First));
  V159_First = (init_p2 -> (pre V159_First));
  V167_First = (init_p1 -> (pre V167_First));
  V175_First = (init_p2 -> (pre V175_First));
    --%PROPERTY OK=true;



-- 240 implications. 
assert (true -> ((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6)) = V138_X) 
and (V58_env = ((((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) and (V167_First < 1000)) and (V175_First < 1000))) 
and ((V138_X and (pre V143_Sofar)) => V143_Sofar) 
and (V118_g1 => ((pre V54_x6) >= 1)) 
and (V119_g2 => (((pre V49_x1) >= 1) and ((pre V55_x7) >= 1))) 
and (V121_g4 => (((pre V51_x3) >= 1) and ((pre V54_x6) >= 1))) 
and (V122_g5 => ((pre V52_x4) >= 1)) 
and (V123_g6 => ((pre V53_x5) >= 1)) 
and ((V53_x5 < 1) => (V58_env => (V53_x5 < 1))) 
and (V123_g6 => (0 <= V151_First)) 
and (V121_g4 => (0 <= V151_First)) 
and ((((pre V51_x3) >= 1) and ((pre V54_x6) >= 1)) => ((pre V51_x3) >= 1)) 
and (V122_g5 => (0 <= V151_First)) 
and (V121_g4 => V118_g1) 
and ((((pre V51_x3) >= 1) and ((pre V54_x6) >= 1)) => ((pre V54_x6) >= 1)) 
and (V119_g2 => (0 <= V151_First)) 
and ((((pre V49_x1) >= 1) and ((pre V55_x7) >= 1)) => ((pre V49_x1) >= 1)) 
and (V120_g3 => (0 <= V151_First)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and e4) and (not e5))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and e2) and (not e3)) and (not e4)) and (not e5))) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (((not e1) and (not e2)) and e3)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (((not e1) and e2) and (not e3))) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => ((((not e1) and e2) and (not e3)) and (not e4))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) => (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)))) 
and ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) => ((((not e1) and (not e2)) and (not e3)) and e4)) 
and ((((not e1) and e2) and (not e3)) => ((not e1) and e2)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e6)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (not e2)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (not e3)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => e4) 
and (((not e1) and (not e2)) => (not e1)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) => ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)))) 
and ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) => ((((not e1) and (not e2)) and e3) and (not e4))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => ((not e1) and (not e2))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e2)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => e5) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)))) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => (not e3)) 
and ((((not e1) and e2) and (not e3)) => (not e3)) 
and ((((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) and (V167_First < 1000)) => ((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First))) 
and (((not e1) and e2) => e2) 
and (V58_env => (V175_First < 1000)) 
and (V58_env => (V167_First < 1000)) 
and (V58_env => (0 <= V151_First)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (((not e1) and (not e2)) and (not e3))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) => ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)))) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and (V58_env => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and ((((pre V49_x1) >= 1) and ((pre V55_x7) >= 1)) => ((pre V55_x7) >= 1)) 
and (V58_env => (((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) and (V167_First < 1000))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) => (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)))) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => (not e4)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (not e4)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)))) 
and ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) => (not e5)) 
and (((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (not e2)) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (not e4)) 
and ((((not e1) and (not e2)) and (not e3)) => (not e2)) 
and ((((not e1) and (not e2)) and (not e3)) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)))) 
and (((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) => (V143_Sofar and (0 <= V151_First))) 
and (((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) => (0 <= V151_First)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)))) 
and ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) => (not e6)) 
and ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) => (not e5)) 
and ((((not e1) and (not e2)) and e3) => (not e2)) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (not e4)) 
and ((((not e1) and (not e2)) and e3) => e3) 
and ((((not e1) and (not e2)) and (not e3)) => ((not e1) and (not e2))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e4)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and e3) and (not e4)) and (not e5))) 
and (((not e1) and (not e2)) => (not e2)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e5)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e4)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e2)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => e6) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e5)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e2)) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and (V118_g1 => (0 <= V151_First)) 
and (V143_Sofar => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and ((V143_Sofar and (0 <= V151_First)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and ((V143_Sofar and (0 <= V151_First)) => (0 <= V151_First)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) => (not e5)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) => (not e2)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) => (not e4)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) => (not e3)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) => (not e5)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) => (not e4)) 
and (((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) => (not e5)) 
and ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e5)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e2)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and ((((not e1) and (not e2)) and e3) => ((not e1) and (not e2))) 
and (((e1 and (not e2)) and (not e3)) => (not e2)) 
and ((((e1 and (not e2)) and (not e3)) and (not e4)) => (not e4)) 
and (((e1 and (not e2)) and (not e3)) => (not e3)) 
and ((e1 and (not e2)) => (not e2)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (((not e1) and (not e2)) and (not e3))) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e3)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and ((((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) and (V167_First < 1000)) => (V167_First < 1000)) 
and ((((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) and (V167_First < 1000)) => (0 <= V159_First)) 
and (((V143_Sofar and (0 <= V151_First)) and (0 <= V159_First)) => (0 <= V159_First)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)))) 
and ((V143_Sofar and (0 <= V151_First)) => V143_Sofar) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => ((not e1) and (not e2))) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => ((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) or (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) or ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((pre V159_First) = (pre V175_First)) 
and ((pre V175_First) = (pre V57_p2)) 
and (V175_First = V159_First) 
and (V167_First = V151_First) 
and ((pre V151_First) = (pre V167_First)) 
and ((pre V167_First) = (pre V56_p1)) 
and ((if V119_g2 then ((pre V55_x7) - 1) else (pre V55_x7)) <=(pre V55_x7)) 
and ((if e5 then (if V121_g4 then ((pre V52_x4) - 1) else (pre V52_x4)) else (pre V52_x4)) <=(if e4 then (if V121_g4 then ((pre V52_x4) + 1) else (pre V52_x4)) else (if e5 then (if V121_g4 then ((pre V52_x4) - 1) else (pre V52_x4)) else (pre V52_x4)))) 
and (0 <=V53_x5) 
and (0 <=(if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2))) 
and (0 <=(if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3))) 
and (0 <=(if e4 then (if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3)) else (pre V51_x3))) 
and (0 <=(pre V51_x3)) 
and (0 <=(if e3 then (if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2)) else (pre V50_x2))) 
and (0 <=(if e3 then (if V120_g3 then ((pre V51_x3) + 1) else (pre V51_x3)) else (if e4 then (if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3)) else (pre V51_x3)))) 
and (0 <=(pre V50_x2)) 
and (0 <=(if V120_g3 then ((pre V51_x3) + 1) else (pre V51_x3))) 
and (0 <=(if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1))) 
and (0 <=(if e2 then (if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1)) else (pre V49_x1))) 
and (0 <=(if e2 then (if V119_g2 then ((pre V50_x2) + 1) else (pre V50_x2)) else (if e3 then (if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2)) else (pre V50_x2)))) 
and (0 <=(if V119_g2 then ((pre V50_x2) + 1) else (pre V50_x2))) 
and (0 <=(pre V49_x1)) 
and (0 <=(if e1 then (if V118_g1 then ((pre V49_x1) + 1) else (pre V49_x1)) else (if e2 then (if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1)) else (pre V49_x1)))) 
and (0 <=(if V118_g1 then ((pre V49_x1) + 1) else (pre V49_x1))) 
and (0 <=1) 
and (0 <=((pre V51_x3) + 1)) 
and (0 <=((pre V50_x2) + 1)) 
and (0 <=((pre V49_x1) + 1)) 
and (0 <=1000) 
and ((if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) else (pre V53_x5)) <=(if e5 then (if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5)) else (if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) else (pre V53_x5)))) 
and ((if e4 then (if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3)) else (pre V51_x3)) <=(if e3 then (if V120_g3 then ((pre V51_x3) + 1) else (pre V51_x3)) else (if e4 then (if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3)) else (pre V51_x3)))) 
and ((if e3 then (if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2)) else (pre V50_x2)) <=(if e2 then (if V119_g2 then ((pre V50_x2) + 1) else (pre V50_x2)) else (if e3 then (if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2)) else (pre V50_x2)))) 
and ((if e2 then (if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1)) else (pre V49_x1)) <=(if e1 then (if V118_g1 then ((pre V49_x1) + 1) else (pre V49_x1)) else (if e2 then (if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1)) else (pre V49_x1)))) 
and ((if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6))) 
and ((if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6)))) 
and ((if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(pre V54_x6)) 
and ((if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6))) 
and ((if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6))) 
and ((if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6))) 
and (1 <=((pre V51_x3) + 1)) 
and (1 <=((pre V50_x2) + 1)) 
and (1 <=((pre V49_x1) + 1)) 
and (1 <=1000) 
and ((if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(pre V54_x6)) 
and ((if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if e3 then (if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6)) else (if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6))))) 
and ((if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6))) 
and ((pre V54_x6) <=(if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6))) 
and (((pre V55_x7) - 1) <=(if V119_g2 then ((pre V55_x7) - 1) else (pre V55_x7))) 
and ((if V119_g2 then ((pre V55_x7) - 1) else (pre V55_x7)) <=(if e2 then (if V119_g2 then ((pre V55_x7) - 1) else (pre V55_x7)) else (if e5 then (if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7)) else (pre V55_x7)))) 
and ((if e2 then (if V119_g2 then ((pre V55_x7) - 1) else (pre V55_x7)) else (if e5 then (if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7)) else (pre V55_x7))) <=(if e5 then (if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7)) else (pre V55_x7))) 
and ((if e5 then (if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7)) else (pre V55_x7)) <=(if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7))) 
and ((if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7)) <=((pre V55_x7) + 1)) 
and ((pre V55_x7) <=(if e5 then (if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7)) else (pre V55_x7))) 
and ((if e5 then (if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7)) else (pre V55_x7)) <=(if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7))) 
and ((if V122_g5 then ((pre V55_x7) + 1) else (pre V55_x7)) <=((pre V55_x7) + 1)) 
and (((pre V52_x4) - 1) <=(if V121_g4 then ((pre V52_x4) - 1) else (pre V52_x4))) 
and ((if V121_g4 then ((pre V52_x4) - 1) else (pre V52_x4)) <=(if e5 then (if V121_g4 then ((pre V52_x4) - 1) else (pre V52_x4)) else (pre V52_x4))) 
and ((if e5 then (if V121_g4 then ((pre V52_x4) - 1) else (pre V52_x4)) else (pre V52_x4)) <=(pre V52_x4)) 
and ((pre V52_x4) <=(if V121_g4 then ((pre V52_x4) + 1) else (pre V52_x4))) 
and ((if V121_g4 then ((pre V52_x4) + 1) else (pre V52_x4)) <=((pre V52_x4) + 1)) 
and (((pre V53_x5) - 1) <=(if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5))) 
and ((if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) <=(if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) else (pre V53_x5))) 
and ((if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) else (pre V53_x5)) <=(pre V53_x5)) 
and ((pre V53_x5) <=(if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5))) 
and ((if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5)) <=((pre V53_x5) + 1)) 
and (((pre V51_x3) - 1) <=(if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3))) 
and ((if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3)) <=(if e4 then (if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3)) else (pre V51_x3))) 
and ((if e4 then (if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3)) else (pre V51_x3)) <=(pre V51_x3)) 
and ((pre V51_x3) <=(if V120_g3 then ((pre V51_x3) + 1) else (pre V51_x3))) 
and ((if V120_g3 then ((pre V51_x3) + 1) else (pre V51_x3)) <=((pre V51_x3) + 1)) 
and (((pre V50_x2) - 1) <=(if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2))) 
and ((if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2)) <=(if e3 then (if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2)) else (pre V50_x2))) 
and ((if e3 then (if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2)) else (pre V50_x2)) <=(pre V50_x2)) 
and ((pre V50_x2) <=(if V119_g2 then ((pre V50_x2) + 1) else (pre V50_x2))) 
and ((if V119_g2 then ((pre V50_x2) + 1) else (pre V50_x2)) <=((pre V50_x2) + 1)) 
and (((pre V49_x1) - 1) <=(if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1))) 
and ((if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1)) <=(if e2 then (if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1)) else (pre V49_x1))) 
and ((if e2 then (if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1)) else (pre V49_x1)) <=(pre V49_x1)) 
and ((pre V49_x1) <=(if V118_g1 then ((pre V49_x1) + 1) else (pre V49_x1))) 
and ((if V118_g1 then ((pre V49_x1) + 1) else (pre V49_x1)) <=((pre V49_x1) + 1)) 
and (0 <=(if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5))) 
and ((if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) <=(if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) else (pre V53_x5))) 
and ((if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) else (pre V53_x5)) <=(pre V53_x5)) 
and ((pre V53_x5) <=(if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5))) 
and ((if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5)) <=((pre V53_x5) + 1)) 
and (V53_x5 <=(if e5 then (if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5)) else (if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) else (pre V53_x5)))) 
and ((if e5 then (if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5)) else (if e6 then (if V123_g6 then ((pre V53_x5) - 1) else (pre V53_x5)) else (pre V53_x5))) <=(if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5))) 
and ((if V122_g5 then ((pre V53_x5) + 1) else (pre V53_x5)) <=((pre V53_x5) + 1)) 
and ((if e4 then (if V121_g4 then ((pre V52_x4) + 1) else (pre V52_x4)) else (if e5 then (if V121_g4 then ((pre V52_x4) - 1) else (pre V52_x4)) else (pre V52_x4))) <=(if V121_g4 then ((pre V52_x4) + 1) else (pre V52_x4))) 
and ((if V121_g4 then ((pre V52_x4) + 1) else (pre V52_x4)) <=((pre V52_x4) + 1)) 
and ((if e3 then (if V120_g3 then ((pre V51_x3) + 1) else (pre V51_x3)) else (if e4 then (if V121_g4 then ((pre V51_x3) - 1) else (pre V51_x3)) else (pre V51_x3))) <=(if V120_g3 then ((pre V51_x3) + 1) else (pre V51_x3))) 
and ((if V120_g3 then ((pre V51_x3) + 1) else (pre V51_x3)) <=((pre V51_x3) + 1)) 
and ((if e2 then (if V119_g2 then ((pre V50_x2) + 1) else (pre V50_x2)) else (if e3 then (if V120_g3 then ((pre V50_x2) - 1) else (pre V50_x2)) else (pre V50_x2))) <=(if V119_g2 then ((pre V50_x2) + 1) else (pre V50_x2))) 
and ((if V119_g2 then ((pre V50_x2) + 1) else (pre V50_x2)) <=((pre V50_x2) + 1)) 
and ((if e1 then (if V118_g1 then ((pre V49_x1) + 1) else (pre V49_x1)) else (if e2 then (if V119_g2 then ((pre V49_x1) - 1) else (pre V49_x1)) else (pre V49_x1))) <=(if V118_g1 then ((pre V49_x1) + 1) else (pre V49_x1))) 
and ((if V118_g1 then ((pre V49_x1) + 1) else (pre V49_x1)) <=((pre V49_x1) + 1)) 
and (((pre V54_x6) - 1) <=(if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6))) 
and ((if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if e1 then (if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e3 then (if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6)) else (if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6)))))) 
and ((if e1 then (if V118_g1 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e3 then (if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6)) else (if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6))))) <=(if e3 then (if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6)) else (if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6))))) 
and ((if e3 then (if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6)) else (if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6)))) <=((pre V54_x6) + 1)) 
and (1 <=((pre V53_x5) + 1)) 
and ((if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) <=(if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6)))) 
and ((if e4 then (if V121_g4 then ((pre V54_x6) - 1) else (pre V54_x6)) else (if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6))) <=(if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6))) 
and ((if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6)) <=(if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6))) 
and ((if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) <=((pre V54_x6) + 1)) 
and ((pre V54_x6) <=(if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6))) 
and ((if e6 then (if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) else (pre V54_x6)) <=(if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6))) 
and ((if V123_g6 then ((pre V54_x6) + 1) else (pre V54_x6)) <=((pre V54_x6) + 1)) 
and ((if V120_g3 then ((pre V54_x6) + 1) else (pre V54_x6)) <=((pre V54_x6) + 1)) 
and  true ));
tel.

