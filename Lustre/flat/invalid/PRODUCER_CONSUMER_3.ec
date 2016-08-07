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
  OK = (V39_env => (true -> (((pre etat1) and etat2) => ((V37_o1 = ((pre V37_o1
  ) + 1)) or (V37_o1 = (pre V37_o1))))));
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



-- 87 implications. 
assert (true -> ((true = (V39_env => (((pre etat1) and etat2) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1)))))) 
and (((pre V34_i) >= 1) = V88_garde1) 
and (((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) or (not ((etat1 or etat2) or etat3))) = (not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)))) 
and ((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) = V102_X) 
and (V39_env = ((V107_Sofar and V115_First) and (V123_First > 0))) 
and (V90_garde3 = ((pre V35_b) >= 1)) 
and (((pre V35_b) >= 1) = V89_garde2) 
and ((V102_X and (pre V107_Sofar)) => V107_Sofar) 
and (((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1))) => (((pre etat1) and etat2) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1))))) 
and ((V37_o1 = ((pre V37_o1) + 1)) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1)))) 
and ((V37_o1 = ((pre V37_o1) + 1)) => (((pre etat1) and etat2) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1))))) 
and ((V37_o1 = ((pre V37_o1) + 1)) => V90_garde3) 
and ((V37_o1 = (pre V37_o1)) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1)))) 
and ((etat1 and etat3) => ((etat1 and etat2) or (etat1 and etat3))) 
and (V39_env => (V107_Sofar and V115_First)) 
and (((pre etat1) and etat2) => etat2) 
and ((etat2 and etat3) => etat2) 
and (etat1 => (etat1 or etat2)) 
and ((etat1 and etat3) => etat3) 
and (((etat1 and etat2) or (etat1 and etat3)) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat1 and etat2) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat1 and etat2) => etat2) 
and ((V37_o1 = ((pre V37_o1) + 1)) => (etat1 or etat2)) 
and ((V37_o1 = ((pre V37_o1) + 1)) => etat2) 
and (V39_env => (((pre etat1) and etat2) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1))))) 
and (V39_env => (V123_First > 0)) 
and ((V107_Sofar and V115_First) => (((pre etat1) and etat2) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1))))) 
and ((V107_Sofar and V115_First) => V115_First) 
and (V107_Sofar => ((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) or (not ((etat1 or etat2) or etat3)))) 
and (etat3 => ((etat1 or etat2) or etat3)) 
and (((etat1 and etat2) or (etat1 and etat3)) => etat1) 
and ((((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)) => (etat1 or etat2)) 
and ((V107_Sofar and V115_First) => V107_Sofar) 
and (V115_First => (((pre etat1) and etat2) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1))))) 
and ((V107_Sofar and V115_First) => ((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) or (not ((etat1 or etat2) or etat3)))) 
and ((((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)) => ((etat1 or etat2) or etat3)) 
and ((etat1 or etat2) => ((etat1 or etat2) or etat3)) 
and ((not ((etat1 or etat2) or etat3)) => (((pre etat1) and etat2) => ((V37_o1 = ((pre V37_o1) + 1)) or (V37_o1 = (pre V37_o1))))) 
and ((not ((etat1 or etat2) or etat3)) => ((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) or (not ((etat1 or etat2) or etat3)))) 
and ((etat2 and etat3) => etat3) 
and (etat2 => ((etat1 or etat2) or etat3)) 
and ((etat1 and etat2) => ((etat1 and etat2) or (etat1 and etat3))) 
and ((etat2 and etat3) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and (etat2 => (etat1 or etat2)) 
and ((V102_X and (pre V107_Sofar)) => (pre V107_Sofar)) 
and ((if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b)) = (if etat2 then (if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V90_garde3 then ((pre V35_b) - 1) else (pre V35_b)))) 
and ((if etat2 then (if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V90_garde3 then ((pre V35_b) - 1) else (pre V35_b))) = (if V90_garde3 then ((pre V35_b) - 1) else (pre V35_b))) 
and ((pre V36_a) = (pre V123_First)) 
and (0 <=(pre V37_o1)) 
and (0 <=V37_o1) 
and (0 <=(if etat2 then (if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1))) 
and (0 <=(if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1))) 
and (0 <=1) 
and (0 <=((pre V37_o1) + 1)) 
and ((if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b)) <=(if etat1 then (if V88_garde1 then ((pre V35_b) + 1) else (pre V35_b)) else (if etat2 then (if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V90_garde3 then ((pre V35_b) - 1) else (pre V35_b))))) 
and (1 <=((pre V35_b) + 1)) 
and (((pre V35_b) - 1) <=(if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b))) 
and ((if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b)) <=(pre V35_b)) 
and ((pre V35_b) <=(if V88_garde1 then ((pre V35_b) + 1) else (pre V35_b))) 
and ((if V88_garde1 then ((pre V35_b) + 1) else (pre V35_b)) <=((pre V35_b) + 1)) 
and (0 <=(if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b))) 
and ((if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b)) <=(pre V35_b)) 
and ((pre V35_b) <=(if V88_garde1 then ((pre V35_b) + 1) else (pre V35_b))) 
and ((if V88_garde1 then ((pre V35_b) + 1) else (pre V35_b)) <=((pre V35_b) + 1)) 
and ((pre V37_o1) <=(if etat2 then (if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1))) 
and ((if etat2 then (if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1)) <=(if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1))) 
and ((if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) <=((pre V37_o1) + 1)) 
and (V37_o1 <=(if etat2 then (if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1))) 
and ((if etat2 then (if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1)) <=(if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1))) 
and ((if V89_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) <=((pre V37_o1) + 1)) 
and ((if etat1 then (if V88_garde1 then ((pre V35_b) + 1) else (pre V35_b)) else (if etat2 then (if V89_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V90_garde3 then ((pre V35_b) - 1) else (pre V35_b)))) <=(if V88_garde1 then ((pre V35_b) + 1) else (pre V35_b))) 
and ((if V88_garde1 then ((pre V35_b) + 1) else (pre V35_b)) <=((pre V35_b) + 1)) 
and (1 <=((pre V37_o1) + 1)) 
and (((pre V34_i) - 1) <=(if V88_garde1 then ((pre V34_i) - 1) else (pre V34_i))) 
and ((if V88_garde1 then ((pre V34_i) - 1) else (pre V34_i)) <=(if etat1 then (if V88_garde1 then ((pre V34_i) - 1) else (pre V34_i)) else (pre V34_i))) 
and ((if etat1 then (if V88_garde1 then ((pre V34_i) - 1) else (pre V34_i)) else (pre V34_i)) <=(pre V34_i)) 
and ((pre V34_i) <=(pre V36_a)) 
and  true ));
tel.

