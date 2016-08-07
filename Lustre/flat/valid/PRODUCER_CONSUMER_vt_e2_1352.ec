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
  V89_garde1: bool;
  V90_garde2: bool;
  V91_garde3: bool;
  V104_X: bool;
  V109_Sofar: bool;
  V118_First: bool;
  V127_First: int;
  V136_First: int;

let
  OK = (V39_env => (((V37_o1 - 1) + V38_o2) <= V136_First));
  V34_i = (V36_a -> (if etat1 then (if V89_garde1 then ((pre V34_i) - 1) else 
  (pre V34_i)) else (pre V34_i)));
  V35_b = (0 -> (if etat1 then (if V89_garde1 then ((pre V35_b) + 1) else (pre 
  V35_b)) else (if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre 
  V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b)))));
  V36_a = (a_init -> (pre V36_a));
  V37_o1 = (0 -> (if etat2 then (if V90_garde2 then ((pre V37_o1) + 1) else 
  (pre V37_o1)) else (pre V37_o1)));
  V38_o2 = (0 -> (if etat3 then (if V91_garde3 then ((pre V38_o2) + 1) else 
  (pre V38_o2)) else (pre V38_o2)));
  V39_env = ((V109_Sofar and V118_First) and (V127_First > 0));
  V89_garde1 = ((pre V34_i) >= 1);
  V90_garde2 = ((pre V35_b) >= 1);
  V91_garde3 = ((pre V35_b) >= 1);
  V104_X = ((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)
  )) or (not ((etat1 or etat2) or etat3)));
  V109_Sofar = (V104_X -> (V104_X and (pre V109_Sofar)));
  V118_First = ((not ((etat1 or etat2) or etat3)) -> (pre V118_First));
  V127_First = (a_init -> (pre V127_First));
  V136_First = (V36_a -> (pre V136_First));
  --%PROPERTY OK;


tel.

