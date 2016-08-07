node top
  (etat1: bool;
  etat2: bool;
  etat3: bool;
  a_init: int)
returns
  (OK: bool);

var
  V31_i: int;
  V32_b: int;
  V33_a: int;
  V34_o1: int;
  V35_o2: int;
  V36_env: bool;
  V80_garde1: bool;
  V81_garde2: bool;
  V82_garde3: bool;
  V95_X: bool;
  V100_Sofar: bool;
  V109_First: int;

let
  OK = (V36_env => ((V34_o1 + V35_o2) <= V33_a));
  V31_i = (V33_a -> (if etat1 then (if V80_garde1 then ((pre V31_i) - 1) else 
  (pre V31_i)) else (pre V31_i)));
  V32_b = (0 -> (if etat1 then (if V80_garde1 then ((pre V32_b) + 1) else (pre 
  V32_b)) else (if etat2 then (if V81_garde2 then ((pre V32_b) - 1) else (pre 
  V32_b)) else (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)))));
  V33_a = (a_init -> (pre V33_a));
  V34_o1 = (0 -> (if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else 
  (pre V34_o1)) else (pre V34_o1)));
  V35_o2 = (0 -> (if etat3 then (if V82_garde3 then ((pre V35_o2) + 1) else 
  (pre V35_o2)) else (pre V35_o2)));
  V36_env = (V100_Sofar and (V109_First > 0));
  V80_garde1 = ((pre V31_i) >= 1);
  V81_garde2 = ((pre V32_b) >= 1);
  V82_garde3 = ((pre V32_b) >= 1);
  V95_X = (not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)))
  ;
  V100_Sofar = (V95_X -> (V95_X and (pre V100_Sofar)));
  V109_First = (a_init -> (pre V109_First));
    --%PROPERTY OK=true;


tel.

