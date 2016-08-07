node top
  (etat_me1: bool;
  etat_me2: bool;
  etat_me3: bool;
  etat_me4: bool)
returns
  (OK: bool);

var
  V29_modified_me: int;
  V30_exclusive_me: int;
  V31_shared_me: int;
  V32_invalid_me: int;
  V33_env: bool;
  V73_garde_me1: bool;
  V74_garde_me2: bool;
  V75_garde_me3: bool;
  V76_garde_me4: bool;
  V90_X: bool;

let
  OK = (V33_env => (true -> ((((V29_modified_me + V30_exclusive_me) + 
  V31_shared_me) + V32_invalid_me) = (pre (((V29_modified_me + V30_exclusive_me
  ) + V31_shared_me) + V32_invalid_me)))));
  V29_modified_me = (0 -> (if etat_me1 then (if V73_garde_me1 then 0 else (pre 
  V29_modified_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre 
  V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if 
  V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if 
  V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))
  )));
  V30_exclusive_me = (0 -> (if etat_me1 then (if V73_garde_me1 then 0 else (pre 
  V30_exclusive_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre 
  V30_exclusive_me) - 1) else (pre V30_exclusive_me)) else (if etat_me3 then 
  (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then 
  (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre 
  V30_exclusive_me))))));
  V31_shared_me = (0 -> (if etat_me1 then (if V73_garde_me1 then ((((pre 
  V31_shared_me) - (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else 
  (pre V31_shared_me)) else (if etat_me2 then (if V74_garde_me2 then (pre 
  V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if 
  V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if 
  V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))));
  V32_invalid_me = (3 -> (if etat_me1 then (if V73_garde_me1 then ((pre 
  V32_invalid_me) - 1) else (pre V32_invalid_me)) else (if etat_me2 then (if 
  V74_garde_me2 then (pre V32_invalid_me) else (pre V32_invalid_me)) else (if 
  etat_me3 then (if V75_garde_me3 then (((((pre V32_invalid_me) + (pre 
  V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else 
  (pre V32_invalid_me)) else (if etat_me4 then (if V76_garde_me4 then (((((pre 
  V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre 
  V31_shared_me)) - 1) else (pre V32_invalid_me)) else (pre V32_invalid_me)))))
  );
  V33_env = (V90_X -> (V90_X and (pre V33_env)));
  V73_garde_me1 = ((pre V32_invalid_me) >= 1);
  V74_garde_me2 = ((pre V30_exclusive_me) >= 1);
  V75_garde_me3 = ((pre V31_shared_me) >= 1);
  V76_garde_me4 = ((pre V32_invalid_me) >= 1);
  V90_X = (not ((((((etat_me1 and etat_me2) or (etat_me1 and etat_me3)) or (
  etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4
  )) or (etat_me3 and etat_me4)));
  --%PROPERTY OK;


tel.

