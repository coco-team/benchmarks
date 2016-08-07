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
  V94_X: bool;
  V99_Sofar: bool;
  V107_First: int;

let
  OK = ((V36_env and ((not etat1) -> true)) => (true -> (((pre etat1) and etat2
  ) => (V34_o1 = ((pre V34_o1) + 1)))));
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
  V36_env = (V99_Sofar and (V107_First > 0));
  V80_garde1 = ((pre V31_i) >= 1);
  V81_garde2 = ((pre V32_b) >= 1);
  V82_garde3 = ((pre V32_b) >= 1);
  V94_X = (not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)))
  ;
  V99_Sofar = (V94_X -> (V94_X and (pre V99_Sofar)));
  V107_First = (a_init -> (pre V107_First));
    --%PROPERTY OK=true;



-- 74 implications. 
assert (true -> ((V80_garde1 = ((pre V31_i) >= 1)) 
and (V94_X = (not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)))) 
and (V36_env = (V99_Sofar and (V107_First > 0))) 
and ((V99_Sofar and (V107_First > 0)) = (V36_env and true)) 
and (((pre V32_b) >= 1) = V81_garde2) 
and (V81_garde2 = V82_garde3) 
and ((V94_X and (pre V99_Sofar)) => V99_Sofar) 
and ((V34_o1 = ((pre V34_o1) + 1)) => (((pre etat1) and etat2) => (V34_o1 = ((pre V34_o1) + 1)))) 
and ((V34_o1 = ((pre V34_o1) + 1)) => ((V36_env and true) => (((pre etat1) and etat2) => (V34_o1 = ((pre V34_o1) + 1))))) 
and ((V34_o1 = ((pre V34_o1) + 1)) => ((pre V32_b) >= 1)) 
and (V36_env => V99_Sofar) 
and (((pre etat1) and etat2) => etat2) 
and ((etat1 and etat3) => ((etat1 and etat2) or (etat1 and etat3))) 
and ((V34_o1 = ((pre V34_o1) + 1)) => etat2) 
and ((etat1 and etat3) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat1 and etat3) => etat3) 
and (((etat1 and etat2) or (etat1 and etat3)) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat1 and etat2) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat1 and etat2) => etat2) 
and ((((pre etat1) and etat2) => (V34_o1 = ((pre V34_o1) + 1))) => ((V36_env and true) => (((pre etat1) and etat2) => (V34_o1 = ((pre V34_o1) + 1))))) 
and ((etat1 and etat2) => ((V36_env and true) => (((pre etat1) and etat2) => (V34_o1 = ((pre V34_o1) + 1))))) 
and ((etat2 and etat3) => etat2) 
and (V36_env => (V107_First > 0)) 
and ((V94_X and (pre V99_Sofar)) => (pre V99_Sofar)) 
and (etat1 => ((V36_env and true) => (((pre etat1) and etat2) => (V34_o1 = ((pre V34_o1) + 1))))) 
and ((etat1 and etat2) => ((etat1 and etat2) or (etat1 and etat3))) 
and ((etat2 and etat3) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat2 and etat3) => etat3) 
and (((pre etat1) and etat2) => (pre etat1)) 
and ((etat1 and etat2) => etat1) 
and (V99_Sofar => V94_X) 
and ((etat1 and etat3) => ((V36_env and true) => (((pre etat1) and etat2) => (V34_o1 = ((pre V34_o1) + 1))))) 
and (((etat1 and etat2) or (etat1 and etat3)) => etat1) 
and ((if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) = (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b))) 
and ((if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)) = (if etat2 then (if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) else (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)))) 
and ((pre V33_a) = (pre V107_First)) 
and (0 <=(pre V34_o1)) 
and (0 <=V34_o1) 
and (0 <=(if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1))) 
and (0 <=(if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1))) 
and (0 <=1) 
and (0 <=((pre V34_o1) + 1)) 
and ((if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) <=(if etat1 then (if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) else (if etat2 then (if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) else (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b))))) 
and (1 <=((pre V32_b) + 1)) 
and (((pre V32_b) - 1) <=(if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b))) 
and ((if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) <=(pre V32_b)) 
and ((pre V32_b) <=(if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b))) 
and ((if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) <=((pre V32_b) + 1)) 
and (0 <=(if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b))) 
and ((if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) <=(pre V32_b)) 
and ((pre V32_b) <=(if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b))) 
and ((if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) <=((pre V32_b) + 1)) 
and ((pre V34_o1) <=(if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1))) 
and ((if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1)) <=(if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1))) 
and ((if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) <=((pre V34_o1) + 1)) 
and (V34_o1 <=(if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1))) 
and ((if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1)) <=(if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1))) 
and ((if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) <=((pre V34_o1) + 1)) 
and (((pre V31_i) - 1) <=(if V80_garde1 then ((pre V31_i) - 1) else (pre V31_i))) 
and ((if V80_garde1 then ((pre V31_i) - 1) else (pre V31_i)) <=(if etat1 then (if V80_garde1 then ((pre V31_i) - 1) else (pre V31_i)) else (pre V31_i))) 
and ((if etat1 then (if V80_garde1 then ((pre V31_i) - 1) else (pre V31_i)) else (pre V31_i)) <=(pre V31_i)) 
and ((pre V31_i) <=(pre V33_a)) 
and ((if etat1 then (if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) else (if etat2 then (if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) else (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)))) <=(if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b))) 
and ((if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) <=((pre V32_b) + 1)) 
and (1 <=((pre V34_o1) + 1)) 
and  true ));
tel.

