node top
  (etat1: bool;
  etat2: bool;
  etat3: bool;
  a_init: int)
returns
  (OK: bool);

var
  V26_i: int;
  V27_b: int;
  V28_a: int;
  V29_o1: int;
  V30_o2: int;
  V31_env: bool;
  V73_garde1: bool;
  V74_garde2: bool;
  V75_garde3: bool;
  V77_X: bool;
  V82_Sofar: bool;
  V90_First: int;
  V98_First: int;

let
  OK = (V31_env => (V29_o1 >= 0));
  V26_i = (V28_a -> (if etat1 then (if V73_garde1 then ((pre V26_i) - 1) else 
  (pre V26_i)) else (pre V26_i)));
  V27_b = (0 -> (if etat1 then (if V73_garde1 then ((pre V27_b) + 1) else (pre 
  V27_b)) else (if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre 
  V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b)))));
  V28_a = (a_init -> (pre V28_a));
  V29_o1 = (0 -> (if etat2 then (if V74_garde2 then ((pre V29_o1) + 1) else 
  (pre V29_o1)) else (pre V29_o1)));
  V30_o2 = (0 -> (if etat3 then (if V75_garde3 then ((pre V30_o2) + 1) else 
  (pre V30_o2)) else (pre V30_o2)));
  V31_env = (((V82_Sofar and ((not etat1) -> true)) and (V90_First > 0)) and (
  V98_First < 10));
  V73_garde1 = ((pre V26_i) >= 1);
  V74_garde2 = ((pre V27_b) >= 1);
  V75_garde3 = ((pre V27_b) >= 1);
  V77_X = (((not (etat2 and etat3)) and (V29_o1 <= 32767)) and (V30_o2 <= 32767
  ));
  V82_Sofar = (V77_X -> (V77_X and (pre V82_Sofar)));
  V90_First = (a_init -> (pre V90_First));
  V98_First = (a_init -> (pre V98_First));
   --%PROPERTY OK=true;


tel.

