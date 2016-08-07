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
  V31_shared_me = (0 -> (if etat_me1 then (if V73_garde_me1 then (((((pre 
  V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) 
  else (pre V31_shared_me)) else (if etat_me2 then (if V74_garde_me2 then (pre 
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
  V90_X = (not (((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (
  etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4
  )) or (etat_me3 and etat_me4)));
  --%PROPERTY  OK=true;



-- 210 implications. 
assert (true -> ((((pre V32_invalid_me) >= 1) = V73_garde_me1) 
and (V73_garde_me1 = V76_garde_me4) 
and ((not (((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) or (etat_me3 and etat_me4))) = V90_X) 
and ((etat_me1 and etat_me2) = ((etat_me1 and etat_me2) and etat_me1)) 
and (V74_garde_me2 = ((pre V30_exclusive_me) >= 1)) 
and (false = V75_garde_me3) 
and (V75_garde_me3 = ((pre V31_shared_me) >= 1)) 
and ((V90_X and (pre V33_env)) => V33_env) 
and ((etat_me1 and etat_me4) => ((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4))) 
and ((etat_me2 and etat_me4) => (V33_env => ((((V29_modified_me + V30_exclusive_me) + V31_shared_me) + V32_invalid_me) = ((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me))))) 
and ((etat_me2 and etat_me4) => etat_me2) 
and ((etat_me3 and etat_me4) => (V33_env => ((((V29_modified_me + V30_exclusive_me) + V31_shared_me) + V32_invalid_me) = ((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me))))) 
and ((etat_me3 and etat_me4) => etat_me3) 
and (((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) => (((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3))) 
and ((((etat_me1 and etat_me2) and etat_me1) and etat_me3) => (etat_me2 and etat_me3)) 
and (((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) => etat_me1) 
and (((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) => (((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) or (etat_me3 and etat_me4))) 
and ((etat_me2 and etat_me3) => (V33_env => ((((V29_modified_me + V30_exclusive_me) + V31_shared_me) + V32_invalid_me) = ((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me))))) 
and ((etat_me2 and etat_me3) => etat_me3) 
and ((((etat_me1 and etat_me2) and etat_me1) and etat_me3) => ((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4))) 
and ((((etat_me1 and etat_me2) and etat_me1) and etat_me3) => (V33_env => ((((V29_modified_me + V30_exclusive_me) + V31_shared_me) + V32_invalid_me) = ((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me))))) 
and ((((etat_me1 and etat_me2) and etat_me1) and etat_me3) => ((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and ((((etat_me1 and etat_me2) and etat_me1) and etat_me3) => etat_me2) 
and ((((etat_me1 and etat_me2) and etat_me1) and etat_me3) => (etat_me1 and etat_me2)) 
and ((etat_me2 and etat_me3) => (((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3))) 
and ((etat_me2 and etat_me3) => ((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and ((etat_me2 and etat_me3) => etat_me2) 
and ((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) => ((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and ((etat_me1 and etat_me2) => etat_me2) 
and ((V90_X and (pre V33_env)) => (pre V33_env)) 
and ((((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) or (etat_me3 and etat_me4)) => (V33_env => ((((V29_modified_me + V30_exclusive_me) + V31_shared_me) + V32_invalid_me) = ((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me))))) 
and (((((V29_modified_me + V30_exclusive_me) + V31_shared_me) + V32_invalid_me) = ((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me))) => (V33_env => ((((V29_modified_me + V30_exclusive_me) + V31_shared_me) + V32_invalid_me) = ((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me))))) 
and ((etat_me1 and etat_me2) => etat_me1) 
and ((etat_me2 and etat_me4) => ((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4))) 
and (V33_env => (not (((((((etat_me1 and etat_me2) and etat_me1) and etat_me3) or (etat_me1 and etat_me4)) or (etat_me2 and etat_me3)) or (etat_me2 and etat_me4)) or (etat_me3 and etat_me4)))) 
and ((pre V31_shared_me) = (if V75_garde_me3 then 0 else (pre V31_shared_me))) 
and ((if V75_garde_me3 then 0 else (pre V31_shared_me)) = (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me))) 
and ((if V75_garde_me3 then 0 else (pre V29_modified_me)) = (pre V29_modified_me)) 
and ((if V73_garde_me1 then 0 else (pre V29_modified_me)) = (if V76_garde_me4 then 0 else (pre V29_modified_me))) 
and (0 = (if V74_garde_me2 then ((pre V30_exclusive_me) - 1) else (pre V30_exclusive_me))) 
and ((if V75_garde_me3 then 1 else (pre V30_exclusive_me)) = (pre V30_exclusive_me)) 
and ((if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) = (if V74_garde_me2 then (pre V32_invalid_me) else (pre V32_invalid_me))) 
and ((if V74_garde_me2 then (pre V32_invalid_me) else (pre V32_invalid_me)) = (pre V32_invalid_me)) 
and (((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me)) = ((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=((pre V31_shared_me) - 1)) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=((pre V29_modified_me) - 1)) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(((pre V31_shared_me) - 1) + (pre V30_exclusive_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=((pre V30_exclusive_me) - 1)) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=((V29_modified_me + V30_exclusive_me) + V31_shared_me)) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(if etat_me1 then (if V73_garde_me1 then 0 else (pre V29_modified_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=V29_modified_me) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(if V75_garde_me3 then 0 else (pre V29_modified_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(if V73_garde_me1 then 0 else (pre V29_modified_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=((pre V29_modified_me) + (pre V30_exclusive_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(V29_modified_me + V30_exclusive_me)) 
and ((if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me)) <=(pre V31_shared_me)) 
and (((pre V31_shared_me) - 1) <=(if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me))) 
and (((pre V31_shared_me) - 1) <=(if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))))) 
and (((pre V31_shared_me) - 1) <=(if etat_me1 then (if V73_garde_me1 then 0 else (pre V29_modified_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))))) 
and (((pre V31_shared_me) - 1) <=V29_modified_me) 
and (((pre V31_shared_me) - 1) <=(V29_modified_me + V30_exclusive_me)) 
and (((pre V29_modified_me) - 1) <=(if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me))) 
and (((pre V29_modified_me) - 1) <=(if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))))) 
and (((pre V29_modified_me) - 1) <=(if etat_me1 then (if V73_garde_me1 then 0 else (pre V29_modified_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))))) 
and (((pre V29_modified_me) - 1) <=V29_modified_me) 
and (((pre V29_modified_me) - 1) <=(V29_modified_me + V30_exclusive_me)) 
and ((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) <=(pre V31_shared_me)) 
and ((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) <=(if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))) 
and ((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) <=(if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me)))) 
and ((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) <=(if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))) 
and ((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) <=(if V76_garde_me4 then 0 else (pre V31_shared_me))) 
and ((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) <=(((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me))) 
and ((if etat_me1 then (if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me)) else (if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))) <=(if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))) 
and ((if etat_me1 then (if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me)) else (if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))) <=(if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me)))) 
and ((if etat_me1 then (if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me)) else (if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))) <=(if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))) 
and ((if etat_me1 then (if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me)) else (if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))) <=(if V76_garde_me4 then 0 else (pre V31_shared_me))) 
and ((if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) <=(if V75_garde_me3 then 0 else (pre V29_modified_me))) 
and ((if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) <=((pre V29_modified_me) + (pre V30_exclusive_me))) 
and ((if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))) <=(if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))) 
and ((if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))) <=(if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))) 
and ((if etat_me1 then (if V73_garde_me1 then 0 else (pre V29_modified_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))))) <=(if V73_garde_me1 then 0 else (pre V29_modified_me))) 
and (V29_modified_me <=(V29_modified_me + V30_exclusive_me)) 
and ((if V75_garde_me3 then 0 else (pre V29_modified_me)) <=((pre V29_modified_me) + (pre V30_exclusive_me))) 
and (0 <=V30_exclusive_me) 
and (0 <=(if etat_me1 then (if V73_garde_me1 then 0 else (pre V30_exclusive_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V30_exclusive_me) - 1) else (pre V30_exclusive_me)) else (if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))))) 
and (0 <=(if etat_me2 then (if V74_garde_me2 then ((pre V30_exclusive_me) - 1) else (pre V30_exclusive_me)) else (if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))))) 
and (((pre V32_invalid_me) - 1) <=((pre V32_invalid_me) + (pre V29_modified_me))) 
and (((pre V32_invalid_me) - 1) <=(((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me))) 
and ((((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) <=((pre V32_invalid_me) + (pre V29_modified_me))) 
and ((((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) <=((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me))) 
and ((((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) <=(((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me))) 
and (((pre V32_invalid_me) + (pre V29_modified_me)) <=(((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me))) 
and ((((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) <=(if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me))) 
and ((if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me)) <=(if etat_me1 then (if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me)) else (if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me)))))) 
and ((if etat_me1 then (if V73_garde_me1 then (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) - 1) else (pre V31_shared_me)) else (if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))) <=V31_shared_me) 
and (V31_shared_me <=0) 
and (0 <=(if V73_garde_me1 then 0 else (pre V30_exclusive_me))) 
and ((if V73_garde_me1 then 0 else (pre V30_exclusive_me)) <=(if V75_garde_me3 then 1 else (pre V30_exclusive_me))) 
and ((if V75_garde_me3 then 1 else (pre V30_exclusive_me)) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and (((pre V31_shared_me) - 1) <=(((pre V31_shared_me) - 1) + (pre V30_exclusive_me))) 
and ((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) <=((pre V30_exclusive_me) - 1)) 
and (((pre V30_exclusive_me) - 1) <=(if V75_garde_me3 then 0 else (pre V29_modified_me))) 
and ((if V75_garde_me3 then 0 else (pre V29_modified_me)) <=(if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))) <=(if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)) <=(if V73_garde_me1 then 0 else (pre V29_modified_me))) 
and ((if V73_garde_me1 then 0 else (pre V29_modified_me)) <=0) 
and (0 <=(if V73_garde_me1 then 0 else (pre V30_exclusive_me))) 
and ((if V73_garde_me1 then 0 else (pre V30_exclusive_me)) <=(if V75_garde_me3 then 1 else (pre V30_exclusive_me))) 
and ((if V75_garde_me3 then 1 else (pre V30_exclusive_me)) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and (((pre V29_modified_me) - 1) <=((pre V30_exclusive_me) - 1)) 
and (((pre V30_exclusive_me) - 1) <=(if V75_garde_me3 then 0 else (pre V29_modified_me))) 
and ((if V75_garde_me3 then 0 else (pre V29_modified_me)) <=(if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))) <=(if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)) <=(if V73_garde_me1 then 0 else (pre V29_modified_me))) 
and ((if V73_garde_me1 then 0 else (pre V29_modified_me)) <=0) 
and (0 <=(if V73_garde_me1 then 0 else (pre V30_exclusive_me))) 
and ((if V73_garde_me1 then 0 else (pre V30_exclusive_me)) <=(if V75_garde_me3 then 1 else (pre V30_exclusive_me))) 
and ((if V75_garde_me3 then 1 else (pre V30_exclusive_me)) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and (((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) + (pre V29_modified_me)) <=(((pre V31_shared_me) - 1) + (pre V30_exclusive_me))) 
and ((((pre V31_shared_me) - 1) + (pre V30_exclusive_me)) <=((pre V30_exclusive_me) - 1)) 
and (((pre V30_exclusive_me) - 1) <=(if V75_garde_me3 then 0 else (pre V29_modified_me))) 
and ((if V75_garde_me3 then 0 else (pre V29_modified_me)) <=(if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))) <=(if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)) <=(if V73_garde_me1 then 0 else (pre V29_modified_me))) 
and ((if V73_garde_me1 then 0 else (pre V29_modified_me)) <=0) 
and (0 <=(if V73_garde_me1 then 0 else (pre V30_exclusive_me))) 
and ((if V73_garde_me1 then 0 else (pre V30_exclusive_me)) <=(if V75_garde_me3 then 1 else (pre V30_exclusive_me))) 
and ((if V75_garde_me3 then 1 else (pre V30_exclusive_me)) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and (((V29_modified_me + V30_exclusive_me) + V31_shared_me) <=(V29_modified_me + V30_exclusive_me)) 
and ((V29_modified_me + V30_exclusive_me) <=V30_exclusive_me) 
and (V30_exclusive_me <=(if etat_me1 then (if V73_garde_me1 then 0 else (pre V30_exclusive_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V30_exclusive_me) - 1) else (pre V30_exclusive_me)) else (if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))))) 
and ((if etat_me1 then (if V73_garde_me1 then 0 else (pre V30_exclusive_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V30_exclusive_me) - 1) else (pre V30_exclusive_me)) else (if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))))) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and ((if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) <=(if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))))) 
and ((if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))) <=(if etat_me1 then (if V73_garde_me1 then 0 else (pre V29_modified_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me)))))) 
and ((if etat_me1 then (if V73_garde_me1 then 0 else (pre V29_modified_me)) else (if etat_me2 then (if V74_garde_me2 then ((pre V29_modified_me) - 1) else (pre V29_modified_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V29_modified_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V29_modified_me)) else (pre V29_modified_me))))) <=V29_modified_me) 
and (V29_modified_me <=0) 
and (0 <=(if V73_garde_me1 then 0 else (pre V30_exclusive_me))) 
and ((if V73_garde_me1 then 0 else (pre V30_exclusive_me)) <=(if V75_garde_me3 then 1 else (pre V30_exclusive_me))) 
and ((if V75_garde_me3 then 1 else (pre V30_exclusive_me)) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and ((pre V31_shared_me) <=(if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))))) 
and ((if etat_me2 then (if V74_garde_me2 then (pre V31_shared_me) else (pre V31_shared_me)) else (if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me)))) <=(if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 0 else (pre V31_shared_me)) else (if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))) <=(if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 0 else (pre V31_shared_me)) else (pre V31_shared_me)) <=(if V76_garde_me4 then 0 else (pre V31_shared_me))) 
and ((if V76_garde_me4 then 0 else (pre V31_shared_me)) <=0) 
and (0 <=(if V73_garde_me1 then 0 else (pre V30_exclusive_me))) 
and ((if V73_garde_me1 then 0 else (pre V30_exclusive_me)) <=(if V75_garde_me3 then 1 else (pre V30_exclusive_me))) 
and ((if V75_garde_me3 then 1 else (pre V30_exclusive_me)) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and ((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) <=((pre V29_modified_me) + (pre V30_exclusive_me))) 
and (((pre V29_modified_me) + (pre V30_exclusive_me)) <=(if V75_garde_me3 then 1 else (pre V30_exclusive_me))) 
and ((if V75_garde_me3 then 1 else (pre V30_exclusive_me)) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and ((if etat_me2 then (if V74_garde_me2 then ((pre V30_exclusive_me) - 1) else (pre V30_exclusive_me)) else (if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) <=(if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then 1 else (pre V30_exclusive_me)) else (if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) <=(if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me))) 
and ((if etat_me4 then (if V76_garde_me4 then 1 else (pre V30_exclusive_me)) else (pre V30_exclusive_me)) <=(if V76_garde_me4 then 1 else (pre V30_exclusive_me))) 
and ((if V76_garde_me4 then 1 else (pre V30_exclusive_me)) <=1) 
and (((pre V32_invalid_me) - 1) <=(if V73_garde_me1 then ((pre V32_invalid_me) - 1) else (pre V32_invalid_me))) 
and ((if V73_garde_me1 then ((pre V32_invalid_me) - 1) else (pre V32_invalid_me)) <=(if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me))) 
and ((((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) <=(if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me))) 
and ((if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) <=(if etat_me4 then (if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (pre V32_invalid_me))) 
and ((if etat_me4 then (if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (pre V32_invalid_me)) <=(if etat_me3 then (if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (if etat_me4 then (if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (pre V32_invalid_me)))) 
and ((if etat_me3 then (if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (if etat_me4 then (if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (pre V32_invalid_me))) <=(if etat_me2 then (if V74_garde_me2 then (pre V32_invalid_me) else (pre V32_invalid_me)) else (if etat_me3 then (if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (if etat_me4 then (if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (pre V32_invalid_me))))) 
and ((if etat_me2 then (if V74_garde_me2 then (pre V32_invalid_me) else (pre V32_invalid_me)) else (if etat_me3 then (if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (if etat_me4 then (if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (pre V32_invalid_me)))) <=(if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me))) 
and ((if etat_me1 then (if V73_garde_me1 then ((pre V32_invalid_me) - 1) else (pre V32_invalid_me)) else (if etat_me2 then (if V74_garde_me2 then (pre V32_invalid_me) else (pre V32_invalid_me)) else (if etat_me3 then (if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (if etat_me4 then (if V76_garde_me4 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me)) else (pre V32_invalid_me))))) <=(if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me))) 
and (((pre V32_invalid_me) + (pre V29_modified_me)) <=(if V75_garde_me3 then (((((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me)) + (pre V31_shared_me)) - 1) else (pre V32_invalid_me))) 
and (((((pre V29_modified_me) + (pre V30_exclusive_me)) + (pre V31_shared_me)) + (pre V32_invalid_me)) <=(((pre V32_invalid_me) + (pre V29_modified_me)) + (pre V30_exclusive_me))) 
and  true ));
tel.

