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



-- 81 implications. 
assert (true -> ((V95_X = (not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)))) 
and (V80_garde1 = ((pre V31_i) >= 1)) 
and ((V100_Sofar and (V109_First > 0)) = V36_env) 
and (V82_garde3 = ((pre V32_b) >= 1)) 
and (((pre V32_b) >= 1) = V81_garde2) 
and ((V95_X and (pre V100_Sofar)) => V100_Sofar) 
and ((etat1 and etat3) => ((etat1 and etat2) or (etat1 and etat3))) 
and ((etat2 and etat3) => etat2) 
and ((V95_X and (pre V100_Sofar)) => (pre V100_Sofar)) 
and ((etat2 and etat3) => etat3) 
and ((etat2 and etat3) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat1 and etat2) => ((etat1 and etat2) or (etat1 and etat3))) 
and ((etat1 and etat2) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat1 and etat2) => etat2) 
and ((etat1 and etat3) => etat3) 
and (((etat1 and etat2) or (etat1 and etat3)) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and (((V34_o1 + V35_o2) <= V33_a) => (V36_env => ((V34_o1 + V35_o2) <= V33_a))) 
and ((V100_Sofar and (V109_First > 0)) => V100_Sofar) 
and ((etat1 and etat2) => (V36_env => ((V34_o1 + V35_o2) <= V33_a))) 
and (((etat1 and etat2) or (etat1 and etat3)) => (V36_env => ((V34_o1 + V35_o2) <= V33_a))) 
and (((etat1 and etat2) or (etat1 and etat3)) => etat1) 
and ((V100_Sofar and (V109_First > 0)) => V95_X) 
and ((V100_Sofar and (V109_First > 0)) => (V109_First > 0)) 
and (V100_Sofar => V95_X) 
and ((if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)) = (if etat2 then (if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) else (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)))) 
and ((if etat2 then (if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) else (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b))) = (if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b))) 
and (V109_First = V33_a) 
and ((pre V109_First) = (pre V33_a)) 
and (0 <=(pre V35_o2)) 
and (0 <=(pre V34_o1)) 
and (0 <=V34_o1) 
and (0 <=(if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1))) 
and (0 <=V35_o2) 
and (0 <=(if etat3 then (if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2)) else (pre V35_o2))) 
and (0 <=(if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2))) 
and (0 <=(if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1))) 
and (0 <=(V34_o1 + V35_o2)) 
and (0 <=1) 
and (0 <=((pre V35_o2) + 1)) 
and (0 <=((pre V34_o1) + 1)) 
and ((if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)) <=(if etat1 then (if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) else (if etat2 then (if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) else (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b))))) 
and (V34_o1 <=(V34_o1 + V35_o2)) 
and (V35_o2 <=(V34_o1 + V35_o2)) 
and (1 <=((pre V34_o1) + 1)) 
and (1 <=((pre V32_b) + 1)) 
and (((pre V32_b) - 1) <=(if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b))) 
and ((if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)) <=(pre V32_b)) 
and ((pre V32_b) <=(if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b))) 
and ((if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) <=((pre V32_b) + 1)) 
and (0 <=(if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b))) 
and ((if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)) <=(pre V32_b)) 
and ((pre V32_b) <=(if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b))) 
and ((if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) <=((pre V32_b) + 1)) 
and ((pre V35_o2) <=(if etat3 then (if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2)) else (pre V35_o2))) 
and ((if etat3 then (if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2)) else (pre V35_o2)) <=(if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2))) 
and ((if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2)) <=((pre V35_o2) + 1)) 
and ((pre V34_o1) <=(if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1))) 
and ((if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1)) <=(if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1))) 
and ((if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) <=((pre V34_o1) + 1)) 
and (V34_o1 <=(if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1))) 
and ((if etat2 then (if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) else (pre V34_o1)) <=(if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1))) 
and ((if V81_garde2 then ((pre V34_o1) + 1) else (pre V34_o1)) <=((pre V34_o1) + 1)) 
and (V35_o2 <=(if etat3 then (if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2)) else (pre V35_o2))) 
and ((if etat3 then (if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2)) else (pre V35_o2)) <=(if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2))) 
and ((if V82_garde3 then ((pre V35_o2) + 1) else (pre V35_o2)) <=((pre V35_o2) + 1)) 
and ((if etat1 then (if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) else (if etat2 then (if V81_garde2 then ((pre V32_b) - 1) else (pre V32_b)) else (if V82_garde3 then ((pre V32_b) - 1) else (pre V32_b)))) <=(if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b))) 
and ((if V80_garde1 then ((pre V32_b) + 1) else (pre V32_b)) <=((pre V32_b) + 1)) 
and (1 <=((pre V35_o2) + 1)) 
and (((pre V31_i) - 1) <=(if V80_garde1 then ((pre V31_i) - 1) else (pre V31_i))) 
and ((if V80_garde1 then ((pre V31_i) - 1) else (pre V31_i)) <=(if etat1 then (if V80_garde1 then ((pre V31_i) - 1) else (pre V31_i)) else (pre V31_i))) 
and ((if etat1 then (if V80_garde1 then ((pre V31_i) - 1) else (pre V31_i)) else (pre V31_i)) <=(pre V31_i)) 
and ((pre V31_i) <=(pre V109_First)) 
and  true ));
tel.

