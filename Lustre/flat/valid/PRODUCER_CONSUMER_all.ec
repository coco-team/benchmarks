node top
  (etat1: bool;
  etat2: bool;
  etat3: bool;
  a_init: int)
returns
  (OK: bool);

var
  V34_i: int;
  V35_b: int;
  V36_a: int;
  V37_o1: int;
  V38_o2: int;
  V39_env: bool;
  V88_garde1: bool;
  V89_garde2: bool;
  V90_garde3: bool;
  V102_X: bool;
  V107_Sofar: bool;
  V115_First: bool;
  V123_First: int;

let
  OK = (V39_env => ((V34_i >= 0) and (true -> (((pre etat1) and etat2) => ((
  V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1)))))));
  V34_i = (V36_a -> (if etat1 then (if V88_garde1 then ((pre V34_i) - 1) else 
  (pre V34_i)) else (pre V34_i)));
  V35_b = (0 -> (if etat1 then (if V88_garde1 then ((pre V35_b) + 1) else (pre 
  V35_b)) else (if etat2 then (if V89_garde2 then ((pre V35_b) - 1) else (pre 
  V35_b)) else (if V90_garde3 then ((pre V35_b) - 1) else (pre V35_b)))));
  V36_a = (a_init -> (pre V36_a));
  V37_o1 = (0 -> (if etat2 then (if V89_garde2 then ((pre V37_o1) + 1) else 
  (pre V37_o1)) else (pre V37_o1)));
  V38_o2 = (0 -> (if etat3 then (if V90_garde3 then ((pre V38_o2) + 1) else 
  (pre V38_o2)) else (pre V38_o2)));
  V39_env = ((V107_Sofar and V115_First) and (V123_First > 0));
  V88_garde1 = ((pre V34_i) >= 1);
  V89_garde2 = ((pre V35_b) >= 1);
  V90_garde3 = ((pre V35_b) >= 1);
  V102_X = ((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)
  )) or (not ((etat1 or etat2) or etat3)));
  V107_Sofar = (V102_X -> (V102_X and (pre V107_Sofar)));
  V115_First = ((not ((etat1 or etat2) or etat3)) -> (pre V115_First));
  V123_First = (a_init -> (pre V123_First));
    --%PROPERTY OK=true;


tel.

