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



-- 96 implications. 
assert (true -> (((V31_env => (V29_o1 >= 0)) = true) 
and (true = (V29_o1 >= 0)) 
and ((((not (etat2 and etat3)) and (V29_o1 <= 32767)) and (V30_o2 <= 32767)) = V77_X) 
and (V73_garde1 = ((pre V26_i) >= 1)) 
and ((V82_Sofar and true) = V82_Sofar) 
and (((pre V27_b) >= 1) = V74_garde2) 
and (V74_garde2 = V75_garde3) 
and ((((not (etat2 and etat3)) and (V29_o1 <= 32767)) and (V30_o2 <= 32767)) => ((not (etat2 and etat3)) and (V29_o1 <= 32767))) 
and (((not (etat2 and etat3)) and (V29_o1 <= 32767)) => (not (etat2 and etat3))) 
and ((V77_X and (pre V82_Sofar)) => (V82_Sofar and true)) 
and (V31_env => (((V82_Sofar and true) and (V90_First > 0)) and (V98_First < 10))) 
and ((etat2 and etat3) => etat2) 
and (((not (etat2 and etat3)) and (V29_o1 <= 32767)) => (V29_o1 <= 32767)) 
and ((((not (etat2 and etat3)) and (V29_o1 <= 32767)) and (V30_o2 <= 32767)) => (V30_o2 <= 32767)) 
and ((V77_X and (pre V82_Sofar)) => (V29_o1 <= 32767)) 
and ((V77_X and (pre V82_Sofar)) => (V30_o2 <= 32767)) 
and ((V77_X and (pre V82_Sofar)) => (pre V82_Sofar)) 
and ((V82_Sofar and true) => (V29_o1 <= 32767)) 
and ((V82_Sofar and true) => (V30_o2 <= 32767)) 
and (((V82_Sofar and true) and (V90_First > 0)) => (V82_Sofar and true)) 
and ((((V82_Sofar and true) and (V90_First > 0)) and (V98_First < 10)) => (((not (etat2 and etat3)) and (V29_o1 <= 32767)) and (V30_o2 <= 32767))) 
and ((((V82_Sofar and true) and (V90_First > 0)) and (V98_First < 10)) => (V29_o1 <= 32767)) 
and ((((V82_Sofar and true) and (V90_First > 0)) and (V98_First < 10)) => (V30_o2 <= 32767)) 
and ((((V82_Sofar and true) and (V90_First > 0)) and (V98_First < 10)) => (V90_First > 0)) 
and ((((V82_Sofar and true) and (V90_First > 0)) and (V98_First < 10)) => (V98_First < 10)) 
and (((V82_Sofar and true) and (V90_First > 0)) => (((not (etat2 and etat3)) and (V29_o1 <= 32767)) and (V30_o2 <= 32767))) 
and (((V82_Sofar and true) and (V90_First > 0)) => (V29_o1 <= 32767)) 
and (((V82_Sofar and true) and (V90_First > 0)) => (V30_o2 <= 32767)) 
and (((V82_Sofar and true) and (V90_First > 0)) => (V90_First > 0)) 
and ((V82_Sofar and true) => (((not (etat2 and etat3)) and (V29_o1 <= 32767)) and (V30_o2 <= 32767))) 
and ((etat2 and etat3) => etat3) 
and (V31_env => (V82_Sofar and true)) 
and ((((V82_Sofar and true) and (V90_First > 0)) and (V98_First < 10)) => ((V82_Sofar and true) and (V90_First > 0))) 
and ((if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b))) = (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b))) 
and ((if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b)) = (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b))) 
and (V98_First = V90_First) 
and ((pre V28_a) = (pre V90_First)) 
and ((pre V90_First) = (pre V98_First)) 
and (0 <=(pre V29_o1)) 
and (0 <=(pre V30_o2)) 
and (0 <=V29_o1) 
and (0 <=(if etat2 then (if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1)) else (pre V29_o1))) 
and (0 <=V30_o2) 
and (0 <=(if etat3 then (if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2)) else (pre V30_o2))) 
and (0 <=(if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1))) 
and (0 <=(if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2))) 
and (0 <=1) 
and (0 <=((pre V29_o1) + 1)) 
and (0 <=((pre V30_o2) + 1)) 
and (0 <=10) 
and (0 <=32767) 
and ((if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b))) <=(if etat1 then (if V73_garde1 then ((pre V27_b) + 1) else (pre V27_b)) else (if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b))))) 
and (1 <=((pre V30_o2) + 1)) 
and (1 <=((pre V27_b) + 1)) 
and (1 <=10) 
and (1 <=32767) 
and (((pre V27_b) - 1) <=(if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b)))) 
and ((if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b))) <=(pre V27_b)) 
and ((pre V27_b) <=(if V73_garde1 then ((pre V27_b) + 1) else (pre V27_b))) 
and ((if V73_garde1 then ((pre V27_b) + 1) else (pre V27_b)) <=((pre V27_b) + 1)) 
and (0 <=(if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b)))) 
and ((if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b))) <=(pre V27_b)) 
and ((pre V27_b) <=(if V73_garde1 then ((pre V27_b) + 1) else (pre V27_b))) 
and ((if V73_garde1 then ((pre V27_b) + 1) else (pre V27_b)) <=((pre V27_b) + 1)) 
and ((pre V29_o1) <=(if etat2 then (if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1)) else (pre V29_o1))) 
and ((if etat2 then (if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1)) else (pre V29_o1)) <=(if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1))) 
and ((if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1)) <=((pre V29_o1) + 1)) 
and ((pre V30_o2) <=(if etat3 then (if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2)) else (pre V30_o2))) 
and ((if etat3 then (if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2)) else (pre V30_o2)) <=(if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2))) 
and ((if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2)) <=((pre V30_o2) + 1)) 
and (V29_o1 <=(if etat2 then (if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1)) else (pre V29_o1))) 
and ((if etat2 then (if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1)) else (pre V29_o1)) <=(if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1))) 
and ((if V74_garde2 then ((pre V29_o1) + 1) else (pre V29_o1)) <=((pre V29_o1) + 1)) 
and (V30_o2 <=(if etat3 then (if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2)) else (pre V30_o2))) 
and ((if etat3 then (if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2)) else (pre V30_o2)) <=(if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2))) 
and ((if V75_garde3 then ((pre V30_o2) + 1) else (pre V30_o2)) <=((pre V30_o2) + 1)) 
and ((if etat1 then (if V73_garde1 then ((pre V27_b) + 1) else (pre V27_b)) else (if etat2 then (if V74_garde2 then ((pre V27_b) - 1) else (pre V27_b)) else (if V75_garde3 then ((pre V27_b) - 1) else (pre V27_b)))) <=(if V73_garde1 then ((pre V27_b) + 1) else (pre V27_b))) 
and ((if V73_garde1 then ((pre V27_b) + 1) else (pre V27_b)) <=((pre V27_b) + 1)) 
and (1 <=((pre V29_o1) + 1)) 
and (((pre V26_i) - 1) <=(if V73_garde1 then ((pre V26_i) - 1) else (pre V26_i))) 
and ((if V73_garde1 then ((pre V26_i) - 1) else (pre V26_i)) <=(if etat1 then (if V73_garde1 then ((pre V26_i) - 1) else (pre V26_i)) else (pre V26_i))) 
and ((if etat1 then (if V73_garde1 then ((pre V26_i) - 1) else (pre V26_i)) else (pre V26_i)) <=(pre V26_i)) 
and ((pre V26_i) <=(pre V28_a)) 
and (10 <=32767) 
and  true ));
tel.

