node top
  (etat_me1: bool;
  etat_me2: bool;
  etat_me3: bool;
  etat_me4: bool)
returns
  (OK: bool);

var
  V32_modified_me: int;
  V33_exclusive_me: int;
  V34_shared_me: int;
  V35_invalid_me: int;
  V36_env: bool;
  V85_garde_me1: bool;
  V86_garde_me2: bool;
  V87_garde_me3: bool;
  V88_garde_me4: bool;
  V102_X: bool;

let
  OK = (V36_env => (((((if (V32_modified_me < 0) then (-V32_modified_me) else 
  V32_modified_me) + (if (V33_exclusive_me < 0) then (-V33_exclusive_me) else 
  V33_exclusive_me)) + (if (V34_shared_me < 0) then (-V34_shared_me) else 
  V34_shared_me)) + (if (V35_invalid_me < 0) then (-V35_invalid_me) else 
  V35_invalid_me)) <= 3));
  V32_modified_me = (0 -> (if etat_me1 then (if V85_garde_me1 then 0 else (pre 
  V32_modified_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre 
  V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if 
  V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if 
  V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))
  )));
  V33_exclusive_me = (0 -> (if etat_me1 then (if V85_garde_me1 then 0 else (pre 
  V33_exclusive_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre 
  V33_exclusive_me) - 1) else (pre V33_exclusive_me)) else (if etat_me3 then 
  (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then 
  (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre 
  V33_exclusive_me))))));
  V34_shared_me = (0 -> (if etat_me1 then (if V85_garde_me1 then (((((pre 
  V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) 
  else (pre V34_shared_me)) else (if etat_me2 then (if V86_garde_me2 then (pre 
  V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if 
  V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if 
  V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))));
  V35_invalid_me = (3 -> (if etat_me1 then (if V85_garde_me1 then ((pre 
  V35_invalid_me) - 1) else (pre V35_invalid_me)) else (if etat_me2 then (if 
  V86_garde_me2 then (pre V35_invalid_me) else (pre V35_invalid_me)) else (if 
  etat_me3 then (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre 
  V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else 
  (pre V35_invalid_me)) else (if etat_me4 then (if V88_garde_me4 then (((((pre 
  V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre 
  V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me)))))
  );
  V36_env = (V102_X -> (V102_X and (pre V36_env)));
  V85_garde_me1 = ((pre V35_invalid_me) >= 1);
  V86_garde_me2 = ((pre V33_exclusive_me) >= 1);
  V87_garde_me3 = ((pre V34_shared_me) >= 1);
  V88_garde_me4 = ((pre V35_invalid_me) >= 1);
  V102_X = (not ((((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (
  etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4
  )) or (etat_me3 and etat_me4)));
  --%PROPERTY  OK=true;



-- 243 implications. 
assert (true -> ((V88_garde_me4 = ((pre V35_invalid_me) >= 1)) 
and (((pre V35_invalid_me) >= 1) = V85_garde_me1) 
and (V102_X = (not ((((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) or (etat_me3 and etat_me4)))) 
and (((pre V33_exclusive_me) >= 1) = V86_garde_me2) 
and (false = ((pre V34_shared_me) >= 1)) 
and (((pre V34_shared_me) >= 1) = (V33_exclusive_me < 0)) 
and ((V33_exclusive_me < 0) = V87_garde_me3) 
and ((V102_X and (pre V36_env)) => V36_env) 
and ((etat_me1 and etat_me4) => (((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4))) 
and ((etat_me2 and etat_me4) => (((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and ((etat_me2 and etat_me4) => (V36_env => (((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3))) 
and ((etat_me2 and etat_me4) => etat_me2) 
and ((etat_me3 and etat_me4) => (V36_env => (((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3))) 
and ((etat_me3 and etat_me4) => etat_me3) 
and ((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) => ((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3))) 
and ((etat_me1 and etat_me2) => ((etat_me1 and etat_me2) or (etat_me1 and etat_me3))) 
and ((etat_me2 and etat_me3) => (V36_env => (((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3))) 
and ((etat_me2 and etat_me3) => etat_me3) 
and ((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) => etat_me1) 
and ((((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) => ((((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) or (etat_me3 and etat_me4))) 
and ((etat_me1 and etat_me3) => (V36_env => (((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3))) 
and ((etat_me1 and etat_me3) => etat_me3) 
and ((etat_me3 and etat_me4) => etat_me4) 
and ((etat_me2 and etat_me3) => (((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and ((etat_me2 and etat_me3) => etat_me2) 
and ((etat_me1 and etat_me3) => ((etat_me1 and etat_me2) or (etat_me1 and etat_me3))) 
and ((V102_X and (pre V36_env)) => (pre V36_env)) 
and (((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) => (V36_env => (((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3))) 
and (((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) => (((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and ((etat_me1 and etat_me2) => (((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and ((etat_me1 and etat_me2) => (V36_env => (((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3))) 
and ((etat_me1 and etat_me2) => etat_me2) 
and (((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) => (((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and ((((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3) => (V36_env => (((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3))) 
and (((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) => (((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4))) 
and (V36_env => V102_X) 
and ((etat_me2 and etat_me4) => etat_me4) 
and (((((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) or (etat_me3 and etat_me4)) => (V36_env => (((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) <= 3))) 
and ((pre V34_shared_me) = (if V87_garde_me3 then 0 else (pre V34_shared_me))) 
and ((if V87_garde_me3 then 0 else (pre V34_shared_me)) = (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me))) 
and ((pre V32_modified_me) = (if V87_garde_me3 then 0 else (pre V32_modified_me))) 
and ((if V88_garde_me4 then 0 else (pre V32_modified_me)) = (if V85_garde_me1 then 0 else (pre V32_modified_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) = 0) 
and ((- V32_modified_me) = (if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me)) 
and ((if V87_garde_me3 then 1 else (pre V33_exclusive_me)) = (pre V33_exclusive_me)) 
and ((if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me) = (- V34_shared_me)) 
and ((if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me) = V33_exclusive_me) 
and ((pre V35_invalid_me) = (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me))) 
and ((if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) = (if V86_garde_me2 then (pre V35_invalid_me) else (pre V35_invalid_me))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=((pre V34_shared_me) - 1)) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(((pre V34_shared_me) - 1) + (pre V33_exclusive_me))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=((pre V32_modified_me) - 1)) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=((pre V33_exclusive_me) - 1)) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(- V33_exclusive_me)) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(if etat_me1 then (if V85_garde_me1 then 0 else (pre V32_modified_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=V32_modified_me) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(pre V32_modified_me)) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(if V88_garde_me4 then 0 else (pre V32_modified_me))) 
and ((if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me)) <=(pre V34_shared_me)) 
and (((pre V34_shared_me) - 1) <=(- V33_exclusive_me)) 
and (((pre V34_shared_me) - 1) <=(if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me))) 
and (((pre V34_shared_me) - 1) <=(if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))))) 
and (((pre V34_shared_me) - 1) <=(if etat_me1 then (if V85_garde_me1 then 0 else (pre V32_modified_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))))) 
and (((pre V34_shared_me) - 1) <=V32_modified_me) 
and ((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) <=(pre V34_shared_me)) 
and ((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) <=(if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))) 
and ((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) <=(if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me)))) 
and ((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) <=(if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))) 
and ((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) <=(if V88_garde_me4 then 0 else (pre V34_shared_me))) 
and (((pre V32_modified_me) - 1) <=(- V33_exclusive_me)) 
and (((pre V32_modified_me) - 1) <=(if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me))) 
and (((pre V32_modified_me) - 1) <=(if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))))) 
and (((pre V32_modified_me) - 1) <=(if etat_me1 then (if V85_garde_me1 then 0 else (pre V32_modified_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))))) 
and (((pre V32_modified_me) - 1) <=V32_modified_me) 
and ((if etat_me1 then (if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me)) else (if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))) <=(if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))) 
and ((if etat_me1 then (if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me)) else (if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))) <=(if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me)))) 
and ((if etat_me1 then (if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me)) else (if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))) <=(if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))) 
and ((if etat_me1 then (if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me)) else (if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))) <=(if V88_garde_me4 then 0 else (pre V34_shared_me))) 
and ((if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) <=(pre V32_modified_me)) 
and ((if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))) <=(if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))) 
and ((if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))) <=(if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))) 
and ((if etat_me1 then (if V85_garde_me1 then 0 else (pre V32_modified_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))))) <=(if V88_garde_me4 then 0 else (pre V32_modified_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(- V32_modified_me)) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if etat_me1 then (if V85_garde_me1 then 0 else (pre V33_exclusive_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) else (if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if etat_me2 then (if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) else (if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) 
and ((if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me) <=((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me))) 
and ((if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me) <=(((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me))) 
and (((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) <=(((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me))) 
and (1 <=((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me))) 
and ((((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) <=((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me))) 
and ((((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) <=((pre V35_invalid_me) + (pre V32_modified_me))) 
and ((((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) <=(((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me))) 
and (((pre V35_invalid_me) - 1) <=((pre V35_invalid_me) + (pre V32_modified_me))) 
and (((pre V35_invalid_me) - 1) <=(((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me))) 
and ((if etat_me1 then (if V85_garde_me1 then ((pre V35_invalid_me) - 1) else (pre V35_invalid_me)) else (if etat_me2 then (if V86_garde_me2 then (pre V35_invalid_me) else (pre V35_invalid_me)) else (if etat_me3 then (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me))))) <=(pre V35_invalid_me)) 
and (V35_invalid_me <=3) 
and ((if etat_me2 then (if V86_garde_me2 then (pre V35_invalid_me) else (pre V35_invalid_me)) else (if etat_me3 then (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me)))) <=((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me))) 
and (((pre V35_invalid_me) + (pre V32_modified_me)) <=(((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me))) 
and ((- V35_invalid_me) <=(if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) 
and ((if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me) <=((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me))) 
and ((((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) <=(if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me))) 
and ((if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me)) <=(if etat_me1 then (if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me)) else (if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me)))))) 
and ((if etat_me1 then (if V85_garde_me1 then (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) - 1) else (pre V34_shared_me)) else (if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))) <=V34_shared_me) 
and (V34_shared_me <=(if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if V85_garde_me1 then 0 else (pre V33_exclusive_me))) 
and ((if V85_garde_me1 then 0 else (pre V33_exclusive_me)) <=(if V87_garde_me3 then 1 else (pre V33_exclusive_me))) 
and ((if V87_garde_me3 then 1 else (pre V33_exclusive_me)) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and (((pre V34_shared_me) - 1) <=(((pre V34_shared_me) - 1) + (pre V33_exclusive_me))) 
and ((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) <=((pre V33_exclusive_me) - 1)) 
and (((pre V33_exclusive_me) - 1) <=(pre V32_modified_me)) 
and ((pre V32_modified_me) <=(if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))) <=(if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)) <=(if V88_garde_me4 then 0 else (pre V32_modified_me))) 
and ((if V88_garde_me4 then 0 else (pre V32_modified_me)) <=(if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if V85_garde_me1 then 0 else (pre V33_exclusive_me))) 
and ((if V85_garde_me1 then 0 else (pre V33_exclusive_me)) <=(if V87_garde_me3 then 1 else (pre V33_exclusive_me))) 
and ((if V87_garde_me3 then 1 else (pre V33_exclusive_me)) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and (((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) + (pre V32_modified_me)) <=(((pre V34_shared_me) - 1) + (pre V33_exclusive_me))) 
and ((((pre V34_shared_me) - 1) + (pre V33_exclusive_me)) <=((pre V33_exclusive_me) - 1)) 
and (((pre V33_exclusive_me) - 1) <=(pre V32_modified_me)) 
and ((pre V32_modified_me) <=(if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))) <=(if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)) <=(if V88_garde_me4 then 0 else (pre V32_modified_me))) 
and ((if V88_garde_me4 then 0 else (pre V32_modified_me)) <=(if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if V85_garde_me1 then 0 else (pre V33_exclusive_me))) 
and ((if V85_garde_me1 then 0 else (pre V33_exclusive_me)) <=(if V87_garde_me3 then 1 else (pre V33_exclusive_me))) 
and ((if V87_garde_me3 then 1 else (pre V33_exclusive_me)) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and (((pre V32_modified_me) - 1) <=((pre V33_exclusive_me) - 1)) 
and (((pre V33_exclusive_me) - 1) <=(pre V32_modified_me)) 
and ((pre V32_modified_me) <=(if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))) <=(if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)) <=(if V88_garde_me4 then 0 else (pre V32_modified_me))) 
and ((if V88_garde_me4 then 0 else (pre V32_modified_me)) <=(if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if V85_garde_me1 then 0 else (pre V33_exclusive_me))) 
and ((if V85_garde_me1 then 0 else (pre V33_exclusive_me)) <=(if V87_garde_me3 then 1 else (pre V33_exclusive_me))) 
and ((if V87_garde_me3 then 1 else (pre V33_exclusive_me)) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and ((- V33_exclusive_me) <=(if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if V85_garde_me1 then 0 else (pre V33_exclusive_me))) 
and ((if V85_garde_me1 then 0 else (pre V33_exclusive_me)) <=(if V87_garde_me3 then 1 else (pre V33_exclusive_me))) 
and ((if V87_garde_me3 then 1 else (pre V33_exclusive_me)) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and ((pre V34_shared_me) <=(if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))))) 
and ((if etat_me2 then (if V86_garde_me2 then (pre V34_shared_me) else (pre V34_shared_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me)))) <=(if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 0 else (pre V34_shared_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))) <=(if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 0 else (pre V34_shared_me)) else (pre V34_shared_me)) <=(if V88_garde_me4 then 0 else (pre V34_shared_me))) 
and ((if V88_garde_me4 then 0 else (pre V34_shared_me)) <=(if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if V85_garde_me1 then 0 else (pre V33_exclusive_me))) 
and ((if V85_garde_me1 then 0 else (pre V33_exclusive_me)) <=(if V87_garde_me3 then 1 else (pre V33_exclusive_me))) 
and ((if V87_garde_me3 then 1 else (pre V33_exclusive_me)) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and ((if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) <=(if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))))) 
and ((if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))) <=(if etat_me1 then (if V85_garde_me1 then 0 else (pre V32_modified_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me)))))) 
and ((if etat_me1 then (if V85_garde_me1 then 0 else (pre V32_modified_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V32_modified_me) - 1) else (pre V32_modified_me)) else (if etat_me3 then (if V87_garde_me3 then 0 else (pre V32_modified_me)) else (if etat_me4 then (if V88_garde_me4 then 0 else (pre V32_modified_me)) else (pre V32_modified_me))))) <=V32_modified_me) 
and (V32_modified_me <=(if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me))) 
and ((if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) <=(if V85_garde_me1 then 0 else (pre V33_exclusive_me))) 
and ((if V85_garde_me1 then 0 else (pre V33_exclusive_me)) <=(if V87_garde_me3 then 1 else (pre V33_exclusive_me))) 
and ((if V87_garde_me3 then 1 else (pre V33_exclusive_me)) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and ((- V32_modified_me) <=((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me))) 
and (((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) <=1) 
and (1 <=3) 
and ((if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me) <=(((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me))) 
and ((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) <=((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me))) 
and ((if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me) <=(if etat_me1 then (if V85_garde_me1 then 0 else (pre V33_exclusive_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) else (if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))))) 
and ((if etat_me1 then (if V85_garde_me1 then 0 else (pre V33_exclusive_me)) else (if etat_me2 then (if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) else (if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))))) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and ((if etat_me2 then (if V86_garde_me2 then ((pre V33_exclusive_me) - 1) else (pre V33_exclusive_me)) else (if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) <=(if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then 1 else (pre V33_exclusive_me)) else (if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) <=(if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me))) 
and ((if etat_me4 then (if V88_garde_me4 then 1 else (pre V33_exclusive_me)) else (pre V33_exclusive_me)) <=(if V88_garde_me4 then 1 else (pre V33_exclusive_me))) 
and ((if V88_garde_me4 then 1 else (pre V33_exclusive_me)) <=1) 
and (1 <=3) 
and ((((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) <=(if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me))) 
and ((if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) <=(if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me))) 
and ((if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me)) <=(if etat_me3 then (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me)))) 
and ((if etat_me3 then (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me))) <=(if etat_me2 then (if V86_garde_me2 then (pre V35_invalid_me) else (pre V35_invalid_me)) else (if etat_me3 then (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me))))) 
and ((if etat_me2 then (if V86_garde_me2 then (pre V35_invalid_me) else (pre V35_invalid_me)) else (if etat_me3 then (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me)))) <=(pre V35_invalid_me)) 
and ((pre V35_invalid_me) <=3) 
and (((pre V35_invalid_me) - 1) <=(if V85_garde_me1 then ((pre V35_invalid_me) - 1) else (pre V35_invalid_me))) 
and ((if V85_garde_me1 then ((pre V35_invalid_me) - 1) else (pre V35_invalid_me)) <=(pre V35_invalid_me)) 
and ((pre V35_invalid_me) <=3) 
and ((if etat_me1 then (if V85_garde_me1 then ((pre V35_invalid_me) - 1) else (pre V35_invalid_me)) else (if etat_me2 then (if V86_garde_me2 then (pre V35_invalid_me) else (pre V35_invalid_me)) else (if etat_me3 then (if V87_garde_me3 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (if etat_me4 then (if V88_garde_me4 then (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) - 1) else (pre V35_invalid_me)) else (pre V35_invalid_me))))) <=V35_invalid_me) 
and (V35_invalid_me <=(if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me)) 
and ((if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me) <=((((if (V32_modified_me < 0) then (- V32_modified_me) else V32_modified_me) + (if (V33_exclusive_me < 0) then (- V33_exclusive_me) else V33_exclusive_me)) + (if (V34_shared_me < 0) then (- V34_shared_me) else V34_shared_me)) + (if (V35_invalid_me < 0) then (- V35_invalid_me) else V35_invalid_me))) 
and (((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) + (pre V34_shared_me)) <=(((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me))) 
and ((((pre V35_invalid_me) + (pre V32_modified_me)) + (pre V33_exclusive_me)) <=3) 
and (((pre V35_invalid_me) + (pre V32_modified_me)) <=(pre V35_invalid_me)) 
and ((pre V35_invalid_me) <=3) 
and  true ));
tel.

