node top
  (init_invalid_mo: int;
  etat_mo1: bool;
  etat_mo2: bool;
  etat_mo3: bool;
  etat_mo4: bool)
returns
  (OK: bool);

var
  V33_modified_mo: int;
  V34_exclusive_mo: int;
  V35_shared_mo: int;
  V36_invalid_mo: int;
  V37_owned_mo: int;
  V38_erreur_mo: bool;
  V82_garde_mo1: bool;
  V83_garde_mo2: bool;
  V84_garde_mo3: bool;
  V85_garde_mo4: bool;
  V99_X: bool;
  V104_Sofar: bool;

let
  OK = (V104_Sofar => (not V38_erreur_mo));
  V33_modified_mo = (0 -> (if etat_mo1 then (if V82_garde_mo1 then 0 else (pre 
  V33_modified_mo)) else (if etat_mo2 then (if V83_garde_mo2 then ((pre 
  V33_modified_mo) + 1) else (pre V33_modified_mo)) else (if etat_mo3 then (if 
  V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if 
  V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo)))
  )));
  V34_exclusive_mo = (0 -> (if etat_mo1 then (if V82_garde_mo1 then 0 else (pre 
  V34_exclusive_mo)) else (if etat_mo2 then (if V83_garde_mo2 then ((pre 
  V34_exclusive_mo) - 1) else (pre V34_exclusive_mo)) else (if etat_mo3 then 
  (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then 
  (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre 
  V34_exclusive_mo))))));
  V35_shared_mo = (0 -> (if etat_mo1 then (if V82_garde_mo1 then (((pre 
  V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo)) else 
  (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V35_shared_mo)) else (if 
  etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre 
  V35_shared_mo)))));
  V36_invalid_mo = (init_invalid_mo -> (if etat_mo1 then (if V82_garde_mo1 then 
  ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) else (if etat_mo3 then 
  (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + 
  (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) 
  else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((
  ((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + 
  (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) 
  else (pre V36_invalid_mo)))));
  V37_owned_mo = (0 -> (if etat_mo1 then (if V82_garde_mo1 then ((pre 
  V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo)) else (if 
  etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if 
  etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre 
  V37_owned_mo)))));
  V38_erreur_mo = (false -> (V34_exclusive_mo >= 2));
  V82_garde_mo1 = ((pre V36_invalid_mo) >= 1);
  V83_garde_mo2 = ((pre V34_exclusive_mo) >= 1);
  V84_garde_mo3 = ((((pre V35_shared_mo) - 1) + (pre V37_owned_mo)) >= 1);
  V85_garde_mo4 = ((pre V36_invalid_mo) >= 1);
  V99_X = ((not ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (
  etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4
  )) or (etat_mo3 and etat_mo4))) and (init_invalid_mo > 0));
  V104_Sofar = (V99_X -> (V99_X or (pre V104_Sofar)));
  --%PROPERTY  OK=true;



-- 205 implications. 
assert (true -> ((true = (V104_Sofar => (not V38_erreur_mo))) 
and ((V104_Sofar => (not V38_erreur_mo)) = (not V38_erreur_mo)) 
and (V82_garde_mo1 = V85_garde_mo4) 
and (V85_garde_mo4 = ((pre V36_invalid_mo) >= 1)) 
and (((not ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4))) and (init_invalid_mo > 0)) = V99_X) 
and (V83_garde_mo2 = ((pre V34_exclusive_mo) >= 1)) 
and (((((pre V35_shared_mo) - 1) + (pre V37_owned_mo)) >= 1) = V84_garde_mo3) 
and (false = (V34_exclusive_mo >= 2)) 
and ((V34_exclusive_mo >= 2) = V38_erreur_mo) 
and (V104_Sofar => (V99_X or (pre V104_Sofar))) 
and ((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) => ((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3))) 
and ((etat_mo1 and etat_mo4) => (((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4))) 
and ((etat_mo1 and etat_mo3) => ((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3))) 
and ((etat_mo2 and etat_mo3) => (((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4))) 
and ((etat_mo2 and etat_mo3) => etat_mo2) 
and ((etat_mo3 and etat_mo4) => etat_mo3) 
and (((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) => (((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4))) 
and ((etat_mo1 and etat_mo2) => (((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4))) 
and ((etat_mo1 and etat_mo2) => etat_mo2) 
and ((etat_mo2 and etat_mo4) => etat_mo2) 
and ((etat_mo3 and etat_mo4) => etat_mo4) 
and ((etat_mo3 and etat_mo4) => ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4))) 
and ((etat_mo1 and etat_mo3) => (((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4))) 
and (((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) => (((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4))) 
and ((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) => etat_mo1) 
and ((pre V104_Sofar) => (V99_X or (pre V104_Sofar))) 
and ((etat_mo2 and etat_mo4) => etat_mo4) 
and ((etat_mo1 and etat_mo2) => ((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3))) 
and ((etat_mo2 and etat_mo4) => (((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4))) 
and (((not ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4))) and (init_invalid_mo > 0)) => (init_invalid_mo > 0)) 
and (((not ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4))) and (init_invalid_mo > 0)) => V104_Sofar) 
and ((etat_mo1 and etat_mo3) => ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4))) 
and ((etat_mo1 and etat_mo3) => etat_mo3) 
and (((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) => ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4))) 
and ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) => ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4))) 
and (((not ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4))) and (init_invalid_mo > 0)) => (not ((((((etat_mo1 and etat_mo2) or (etat_mo1 and etat_mo3)) or (etat_mo1 and etat_mo4)) or (etat_mo2 and etat_mo3)) or (etat_mo2 and etat_mo4)) or (etat_mo3 and etat_mo4)))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) = 0) 
and (0 = (if V83_garde_mo2 then ((pre V34_exclusive_mo) - 1) else (pre V34_exclusive_mo))) 
and ((if V82_garde_mo1 then 0 else (pre V33_modified_mo)) = (if V85_garde_mo4 then 0 else (pre V33_modified_mo))) 
and (((pre V36_invalid_mo) - 1) <=(if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo))) 
and (((pre V36_invalid_mo) - 1) <=(if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo))) 
and (((pre V36_invalid_mo) - 1) <=(if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo))) 
and (((pre V36_invalid_mo) - 1) <=(if etat_mo1 then (if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) else (if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo))))) 
and (((pre V36_invalid_mo) - 1) <=(if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo)))) 
and (((pre V36_invalid_mo) - 1) <=(pre V36_invalid_mo)) 
and (((pre V36_invalid_mo) - 1) <=((pre V36_invalid_mo) + (pre V33_modified_mo))) 
and (((pre V36_invalid_mo) - 1) <=(((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo))) 
and (((pre V36_invalid_mo) - 1) <=((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo))) 
and ((if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) <=(if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo))) 
and ((if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) <=(if etat_mo1 then (if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) else (if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo))))) 
and ((if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) <=(if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo)))) 
and ((if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) <=(pre V36_invalid_mo)) 
and ((if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) <=((pre V36_invalid_mo) + (pre V33_modified_mo))) 
and ((if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) <=(((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo))) 
and ((if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) <=((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo))) 
and ((pre V36_invalid_mo) <=(if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo))) 
and (((pre V35_shared_mo) - 1) <=(pre V35_shared_mo)) 
and (((pre V35_shared_mo) - 1) <=((pre V35_shared_mo) + (pre V34_exclusive_mo))) 
and (((pre V35_shared_mo) - 1) <=(if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo))) 
and (((pre V35_shared_mo) - 1) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V85_garde_mo4 then 0 else (pre V37_owned_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V82_garde_mo1 then 0 else (pre V33_modified_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo)))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V84_garde_mo3 then 0 else (pre V33_modified_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(pre V33_modified_mo)) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V85_garde_mo4 then 0 else (pre V35_shared_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo1 then (if V82_garde_mo1 then 0 else (pre V33_modified_mo)) else (if etat_mo2 then (if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo)))))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo2 then (if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo))))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V82_garde_mo1 then 0 else (pre V34_exclusive_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(pre V34_exclusive_mo)) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V84_garde_mo3 then 1 else (pre V34_exclusive_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V84_garde_mo3 then 0 else (pre V35_shared_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=V34_exclusive_mo) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo1 then (if V82_garde_mo1 then 0 else (pre V34_exclusive_mo)) else (if etat_mo2 then (if V83_garde_mo2 then ((pre V34_exclusive_mo) - 1) else (pre V34_exclusive_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo)))))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo2 then (if V83_garde_mo2 then ((pre V34_exclusive_mo) - 1) else (pre V34_exclusive_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo))))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo)))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if V85_garde_mo4 then 1 else (pre V34_exclusive_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=1) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=((pre V33_modified_mo) + 1)) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=2) 
and ((if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo))) <=(if etat_mo1 then (if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo))))) 
and ((if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo))) <=(if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V35_shared_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo)))) 
and ((if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo))) <=(if etat_mo1 then (if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V35_shared_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo))))) 
and ((if V85_garde_mo4 then 0 else (pre V37_owned_mo)) <=(if V85_garde_mo4 then 0 else (pre V35_shared_mo))) 
and ((if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo)) <=(if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo))) 
and ((pre V37_owned_mo) <=(pre V35_shared_mo)) 
and ((pre V37_owned_mo) <=((pre V35_shared_mo) + (pre V34_exclusive_mo))) 
and ((if etat_mo1 then (if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo)))) <=(if etat_mo1 then (if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V35_shared_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo))))) 
and ((if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo))) <=(if etat_mo2 then (if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo))))) 
and ((if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo)) <=(if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo))) 
and ((pre V33_modified_mo) <=(if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo))) 
and ((pre V33_modified_mo) <=1) 
and ((pre V33_modified_mo) <=((pre V33_modified_mo) + 1)) 
and ((pre V33_modified_mo) <=2) 
and ((pre V34_exclusive_mo) <=(if V84_garde_mo3 then 1 else (pre V34_exclusive_mo))) 
and ((pre V34_exclusive_mo) <=((pre V35_shared_mo) + (pre V34_exclusive_mo))) 
and ((pre V34_exclusive_mo) <=(if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo)))) 
and ((pre V34_exclusive_mo) <=(if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo))) 
and ((pre V34_exclusive_mo) <=(if V85_garde_mo4 then 1 else (pre V34_exclusive_mo))) 
and ((if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) <=1) 
and ((if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) <=((pre V33_modified_mo) + 1)) 
and ((if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) <=2) 
and ((if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V35_shared_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo))) <=(if etat_mo1 then (if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V35_shared_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo))))) 
and ((if V84_garde_mo3 then 0 else (pre V35_shared_mo)) <=1) 
and ((if V84_garde_mo3 then 0 else (pre V35_shared_mo)) <=((pre V33_modified_mo) + 1)) 
and ((if V84_garde_mo3 then 0 else (pre V35_shared_mo)) <=2) 
and ((pre V35_shared_mo) <=(if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo))) 
and (1 <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and (((pre V36_invalid_mo) - 1) <=((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1)) 
and (((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) <=(if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo))) 
and ((if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) <=(((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo))) 
and ((if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) <=(if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo))) 
and ((if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) <=(if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo))) 
and ((if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) <=(((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo))) 
and ((if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo)) <=(if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo)))) 
and ((if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo))) <=(if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo))) 
and ((if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) <=(((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo))) 
and ((if etat_mo1 then (if V82_garde_mo1 then ((pre V36_invalid_mo) - 1) else (pre V36_invalid_mo)) else (if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo)))) <=(if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo)))) 
and ((if etat_mo3 then (if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (if etat_mo4 then (if V85_garde_mo4 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) else (pre V36_invalid_mo))) <=(if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo))) 
and ((if V84_garde_mo3 then ((((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo)) - 1) else (pre V36_invalid_mo)) <=(((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo))) 
and ((pre V36_invalid_mo) <=((pre V36_invalid_mo) + (pre V33_modified_mo))) 
and (((pre V36_invalid_mo) + (pre V33_modified_mo)) <=(((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo))) 
and ((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) <=((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo))) 
and (((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) <=(((((pre V36_invalid_mo) + (pre V33_modified_mo)) + (pre V34_exclusive_mo)) + (pre V35_shared_mo)) + (pre V37_owned_mo))) 
and (((pre V34_exclusive_mo) - 1) <=(if V84_garde_mo3 then 0 else (pre V37_owned_mo))) 
and ((if V84_garde_mo3 then 0 else (pre V37_owned_mo)) <=(if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo)))) 
and ((if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo))) <=(if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo))) 
and ((if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo)) <=(pre V37_owned_mo)) 
and ((pre V37_owned_mo) <=(if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo))) 
and ((if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo)) <=((pre V37_owned_mo) + (pre V33_modified_mo))) 
and (((pre V37_owned_mo) + (pre V33_modified_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and (((pre V35_shared_mo) - 1) <=(((pre V35_shared_mo) - 1) + (pre V37_owned_mo))) 
and ((if V85_garde_mo4 then 0 else (pre V37_owned_mo)) <=(if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo))) 
and ((if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo)) <=(pre V37_owned_mo)) 
and ((pre V37_owned_mo) <=(if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo))) 
and ((if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo)) <=((pre V37_owned_mo) + (pre V33_modified_mo))) 
and (((pre V37_owned_mo) + (pre V33_modified_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if V82_garde_mo1 then 0 else (pre V33_modified_mo)) <=(if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo))) 
and ((if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo)) <=(pre V33_modified_mo)) 
and ((pre V33_modified_mo) <=((pre V37_owned_mo) + (pre V33_modified_mo))) 
and (((pre V37_owned_mo) + (pre V33_modified_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if etat_mo1 then (if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V37_owned_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V37_owned_mo)) else (pre V37_owned_mo)))) <=(if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo))) 
and ((if V82_garde_mo1 then ((pre V37_owned_mo) + (pre V33_modified_mo)) else (pre V37_owned_mo)) <=((pre V37_owned_mo) + (pre V33_modified_mo))) 
and (((pre V37_owned_mo) + (pre V33_modified_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo))) <=(pre V33_modified_mo)) 
and ((pre V33_modified_mo) <=((pre V37_owned_mo) + (pre V33_modified_mo))) 
and (((pre V37_owned_mo) + (pre V33_modified_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if V84_garde_mo3 then 0 else (pre V33_modified_mo)) <=(pre V33_modified_mo)) 
and ((pre V33_modified_mo) <=((pre V37_owned_mo) + (pre V33_modified_mo))) 
and (((pre V37_owned_mo) + (pre V33_modified_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if V85_garde_mo4 then 0 else (pre V35_shared_mo)) <=(if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo))) 
and ((if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo)) <=(pre V35_shared_mo)) 
and ((pre V35_shared_mo) <=((pre V35_shared_mo) + (pre V34_exclusive_mo))) 
and (((pre V35_shared_mo) + (pre V34_exclusive_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if etat_mo1 then (if V82_garde_mo1 then 0 else (pre V33_modified_mo)) else (if etat_mo2 then (if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo))))) <=(if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo))) 
and ((if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo)) <=1) 
and (1 <=((pre V33_modified_mo) + 1)) 
and (((pre V33_modified_mo) + 1) <=2) 
and ((if etat_mo2 then (if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V33_modified_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V33_modified_mo)) else (pre V33_modified_mo)))) <=(if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo))) 
and ((if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo)) <=1) 
and (1 <=((pre V33_modified_mo) + 1)) 
and (((pre V33_modified_mo) + 1) <=2) 
and ((if V82_garde_mo1 then 0 else (pre V34_exclusive_mo)) <=(pre V34_exclusive_mo)) 
and ((pre V34_exclusive_mo) <=(if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo))) 
and ((if V83_garde_mo2 then ((pre V33_modified_mo) + 1) else (pre V33_modified_mo)) <=1) 
and (1 <=((pre V33_modified_mo) + 1)) 
and (((pre V33_modified_mo) + 1) <=2) 
and ((if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) <=((pre V35_shared_mo) + (pre V34_exclusive_mo))) 
and (((pre V35_shared_mo) + (pre V34_exclusive_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V35_shared_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo))) <=(pre V35_shared_mo)) 
and ((pre V35_shared_mo) <=((pre V35_shared_mo) + (pre V34_exclusive_mo))) 
and (((pre V35_shared_mo) + (pre V34_exclusive_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if V84_garde_mo3 then 0 else (pre V35_shared_mo)) <=(pre V35_shared_mo)) 
and ((pre V35_shared_mo) <=((pre V35_shared_mo) + (pre V34_exclusive_mo))) 
and (((pre V35_shared_mo) + (pre V34_exclusive_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and (V34_exclusive_mo <=(if etat_mo1 then (if V82_garde_mo1 then 0 else (pre V34_exclusive_mo)) else (if etat_mo2 then (if V83_garde_mo2 then ((pre V34_exclusive_mo) - 1) else (pre V34_exclusive_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo)))))) 
and ((if etat_mo1 then (if V82_garde_mo1 then 0 else (pre V34_exclusive_mo)) else (if etat_mo2 then (if V83_garde_mo2 then ((pre V34_exclusive_mo) - 1) else (pre V34_exclusive_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo))))) <=(if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo)))) 
and ((if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo))) <=1) 
and (1 <=((pre V33_modified_mo) + 1)) 
and (((pre V33_modified_mo) + 1) <=2) 
and ((if etat_mo2 then (if V83_garde_mo2 then ((pre V34_exclusive_mo) - 1) else (pre V34_exclusive_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo)))) <=(if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo)))) 
and ((if etat_mo3 then (if V84_garde_mo3 then 1 else (pre V34_exclusive_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo))) <=1) 
and (1 <=((pre V33_modified_mo) + 1)) 
and (((pre V33_modified_mo) + 1) <=2) 
and ((if etat_mo1 then (if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo)) else (if etat_mo3 then (if V84_garde_mo3 then 0 else (pre V35_shared_mo)) else (if etat_mo4 then (if V85_garde_mo4 then 0 else (pre V35_shared_mo)) else (pre V35_shared_mo)))) <=(if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo))) 
and ((if V82_garde_mo1 then (((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1) else (pre V35_shared_mo)) <=(((pre V35_shared_mo) + (pre V34_exclusive_mo)) + 1)) 
and ((if etat_mo4 then (if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) else (pre V34_exclusive_mo)) <=(if V85_garde_mo4 then 1 else (pre V34_exclusive_mo))) 
and ((if V85_garde_mo4 then 1 else (pre V34_exclusive_mo)) <=1) 
and (1 <=((pre V33_modified_mo) + 1)) 
and (((pre V33_modified_mo) + 1) <=2) 
and  true ));
tel.

