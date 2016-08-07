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
  V70_garde1: bool;
  V71_garde2: bool;
  V72_garde3: bool;
  V74_X: bool;
  V79_Sofar: bool;
  V87_First: int;

let
  OK = (V31_env => (V26_i >= 0));
  V26_i = (V28_a -> (if etat1 then (if V70_garde1 then ((pre V26_i) - 1) else 
  (pre V26_i)) else (pre V26_i)));
  V27_b = (0 -> (if etat1 then (if V70_garde1 then ((pre V27_b) + 1) else (pre 
  V27_b)) else (if etat2 then (if V71_garde2 then ((pre V27_b) - 1) else (pre 
  V27_b)) else (if V72_garde3 then ((pre V27_b) - 1) else (pre V27_b)))));
  V28_a = (a_init -> (pre V28_a));
  V29_o1 = (0 -> (if etat2 then (if V71_garde2 then ((pre V29_o1) + 1) else 
  (pre V29_o1)) else (pre V29_o1)));
  V30_o2 = (0 -> (if etat3 then (if V72_garde3 then ((pre V30_o2) + 1) else 
  (pre V30_o2)) else (pre V30_o2)));
  V31_env = ((V79_Sofar and ((not etat1) -> true)) and (V87_First > 0));
  V70_garde1 = ((pre V26_i) >= 1);
  V71_garde2 = ((pre V27_b) >= 1);
  V72_garde3 = ((pre V27_b) >= 1);
  V74_X = (not (etat2 and etat3));
  V79_Sofar = (V74_X -> (V74_X and (pre V79_Sofar)));
  V87_First = (a_init -> (pre V87_First));
    --%PROPERTY OK=true;



-- 26 implications. 
assert (true -> (((V31_env => (V26_i >= 0)) = true) 
and (V70_garde1 = ((pre V26_i) >= 1)) 
and ((not (etat2 and etat3)) = V74_X) 
and (V79_Sofar = (V79_Sofar and true)) 
and ((V74_X and (pre V79_Sofar)) => V79_Sofar) 
and (V31_env => ((V79_Sofar and true) and (V87_First > 0))) 
and (((V79_Sofar and true) and (V87_First > 0)) => V79_Sofar) 
and ((V87_First > 0) => (V26_i >= 0)) 
and ((etat2 and etat3) => etat3) 
and (((V79_Sofar and true) and (V87_First > 0)) => (V87_First > 0)) 
and (((V79_Sofar and true) and (V87_First > 0)) => (V26_i >= 0)) 
and ((V74_X and (pre V79_Sofar)) => (pre V79_Sofar)) 
and (V79_Sofar => (not (etat2 and etat3))) 
and ((etat2 and etat3) => etat2) 
and ((pre V87_First) = (pre V28_a)) 
and (0 <=1) 
and (((pre V26_i) - 1) <=(if V70_garde1 then ((pre V26_i) - 1) else (pre V26_i))) 
and ((if V70_garde1 then ((pre V26_i) - 1) else (pre V26_i)) <=(if etat1 then (if V70_garde1 then ((pre V26_i) - 1) else (pre V26_i)) else (pre V26_i))) 
and ((if etat1 then (if V70_garde1 then ((pre V26_i) - 1) else (pre V26_i)) else (pre V26_i)) <=(pre V26_i)) 
and ((pre V26_i) <=(pre V87_First)) 
and (V26_i <=V87_First) 
and  true ));
tel.

