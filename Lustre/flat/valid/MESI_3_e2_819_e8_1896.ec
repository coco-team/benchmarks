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
  V102_X = (not (((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (
  etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4
  )) or (etat_me3 and etat_me4)));
  --%PROPERTY OK;


tel.

