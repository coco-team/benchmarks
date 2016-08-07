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
  OK = (V39_env => ((V37_o1 - V38_o2) <= V136_First));
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
  --%PROPERTY  OK=true;



-- 93 implications. 
assert (true -> ((V104_X = (not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)))) 
and ((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) = ((not (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) or (not ((etat1 or etat2) or etat3)))) 
and (V89_garde1 = ((pre V34_i) >= 1)) 
and (V39_env = ((V109_Sofar and V118_First) and (V127_First > 0))) 
and (((pre V35_b) >= 1) = V90_garde2) 
and (V90_garde2 = V91_garde3) 
and ((V104_X and (pre V109_Sofar)) => V109_Sofar) 
and (((etat1 and etat2) or (etat1 and etat3)) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat1 and etat3) => ((etat1 and etat2) or (etat1 and etat3))) 
and ((etat2 and etat3) => (((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3))) 
and ((etat2 and etat3) => etat2) 
and ((V109_Sofar and V118_First) => V118_First) 
and ((etat1 or etat2) => ((etat1 or etat2) or etat3)) 
and ((etat1 and etat3) => (V39_env => ((V37_o1 - V38_o2) <= V136_First))) 
and ((etat1 and etat3) => etat3) 
and ((((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)) => (V39_env => ((V37_o1 - V38_o2) <= V136_First))) 
and ((((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)) => ((etat1 or etat2) or etat3)) 
and (etat1 => (etat1 or etat2)) 
and ((etat1 and etat2) => etat2) 
and ((V104_X and (pre V109_Sofar)) => (pre V109_Sofar)) 
and ((etat2 and etat3) => (V39_env => ((V37_o1 - V38_o2) <= V136_First))) 
and ((etat2 and etat3) => etat3) 
and ((etat1 and etat2) => ((etat1 and etat2) or (etat1 and etat3))) 
and (etat2 => (etat1 or etat2)) 
and (((V37_o1 - V38_o2) <= V136_First) => (V39_env => ((V37_o1 - V38_o2) <= V136_First))) 
and (V39_env => V109_Sofar) 
and (V39_env => V118_First) 
and (V39_env => (V109_Sofar and V118_First)) 
and (((etat1 and etat2) or (etat1 and etat3)) => etat1) 
and ((((etat1 and etat2) or (etat1 and etat3)) or (etat2 and etat3)) => (etat1 or etat2)) 
and (etat3 => ((etat1 or etat2) or etat3)) 
and (V39_env => V104_X) 
and (V39_env => (V127_First > 0)) 
and ((V109_Sofar and V118_First) => V109_Sofar) 
and ((V109_Sofar and V118_First) => V104_X) 
and (V109_Sofar => V104_X) 
and ((not ((etat1 or etat2) or etat3)) => V104_X) 
and ((if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b))) = (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b))) 
and ((if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b)) = (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b))) 
and (V127_First = V136_First) 
and ((pre V136_First) = (pre V36_a)) 
and ((pre V36_a) = (pre V127_First)) 
and (0 <=(if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b)))) 
and (0 <=(pre V37_o1)) 
and (0 <=V37_o1) 
and (0 <=(if etat2 then (if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1))) 
and (0 <=V38_o2) 
and (0 <=(pre V35_b)) 
and (0 <=(if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1))) 
and (0 <=(if etat1 then (if V89_garde1 then ((pre V35_b) + 1) else (pre V35_b)) else (if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b))))) 
and (0 <=(if V89_garde1 then ((pre V35_b) + 1) else (pre V35_b))) 
and (0 <=1) 
and (0 <=((pre V37_o1) + 1)) 
and (0 <=((pre V35_b) + 1)) 
and ((if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b))) <=(if etat1 then (if V89_garde1 then ((pre V35_b) + 1) else (pre V35_b)) else (if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b))))) 
and (1 <=((pre V37_o1) + 1)) 
and (1 <=((pre V35_b) + 1)) 
and (((pre V35_b) - 1) <=(if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b)))) 
and ((if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b))) <=(pre V35_b)) 
and ((pre V35_b) <=(if V89_garde1 then ((pre V35_b) + 1) else (pre V35_b))) 
and ((if V89_garde1 then ((pre V35_b) + 1) else (pre V35_b)) <=((pre V35_b) + 1)) 
and ((V37_o1 - V38_o2) <=V37_o1) 
and (V37_o1 <=(if etat2 then (if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1))) 
and ((if etat2 then (if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1)) <=(if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1))) 
and ((if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) <=((pre V37_o1) + 1)) 
and (0 <=(pre V38_o2)) 
and ((pre V38_o2) <=(if etat3 then (if V91_garde3 then ((pre V38_o2) + 1) else (pre V38_o2)) else (pre V38_o2))) 
and ((if etat3 then (if V91_garde3 then ((pre V38_o2) + 1) else (pre V38_o2)) else (pre V38_o2)) <=(if V91_garde3 then ((pre V38_o2) + 1) else (pre V38_o2))) 
and ((if V91_garde3 then ((pre V38_o2) + 1) else (pre V38_o2)) <=((pre V38_o2) + 1)) 
and ((pre V37_o1) <=(if etat2 then (if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1))) 
and ((if etat2 then (if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) else (pre V37_o1)) <=(if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1))) 
and ((if V90_garde2 then ((pre V37_o1) + 1) else (pre V37_o1)) <=((pre V37_o1) + 1)) 
and (V38_o2 <=(if etat3 then (if V91_garde3 then ((pre V38_o2) + 1) else (pre V38_o2)) else (pre V38_o2))) 
and ((if etat3 then (if V91_garde3 then ((pre V38_o2) + 1) else (pre V38_o2)) else (pre V38_o2)) <=(if V91_garde3 then ((pre V38_o2) + 1) else (pre V38_o2))) 
and ((if V91_garde3 then ((pre V38_o2) + 1) else (pre V38_o2)) <=((pre V38_o2) + 1)) 
and ((if etat1 then (if V89_garde1 then ((pre V35_b) + 1) else (pre V35_b)) else (if etat2 then (if V90_garde2 then ((pre V35_b) - 1) else (pre V35_b)) else (if V91_garde3 then ((pre V35_b) - 1) else (pre V35_b)))) <=(if V89_garde1 then ((pre V35_b) + 1) else (pre V35_b))) 
and ((if V89_garde1 then ((pre V35_b) + 1) else (pre V35_b)) <=((pre V35_b) + 1)) 
and (1 <=((pre V38_o2) + 1)) 
and (((pre V34_i) - 1) <=(if V89_garde1 then ((pre V34_i) - 1) else (pre V34_i))) 
and ((if V89_garde1 then ((pre V34_i) - 1) else (pre V34_i)) <=(if etat1 then (if V89_garde1 then ((pre V34_i) - 1) else (pre V34_i)) else (pre V34_i))) 
and ((if etat1 then (if V89_garde1 then ((pre V34_i) - 1) else (pre V34_i)) else (pre V34_i)) <=(pre V34_i)) 
and ((pre V34_i) <=(pre V136_First)) 
and  true ));
tel.

