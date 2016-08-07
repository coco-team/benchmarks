node top
  (set: bool;
  treset: bool;
  initial: bool)
returns
  (OK: bool);

var
  V16_level: bool;
  V17_level1: bool;

let
  OK = (if (not (set and treset)) then (V16_level = V17_level1) else true);
  V16_level = (initial -> (if (set and (not (pre V16_level))) then true else 
  (if treset then false else (pre V16_level))));
  V17_level1 = (initial -> (if set then true else (if treset then false else 
  (pre V17_level1))));
  --%PROPERTY OK=true;



-- 27 implications. 
assert (true -> (((if (set and (not (pre V16_level))) then true else (if treset then false else (pre V16_level))) => (V16_level = V17_level1)) 
and ((if treset then false else (pre V16_level)) => (if set then true else (if treset then false else (pre V17_level1)))) 
and ((if treset then false else (pre V16_level)) => (if treset then false else (pre V17_level1))) 
and ((pre V16_level) => (if (not (set and treset)) then (V16_level = V17_level1) else true)) 
and ((pre V16_level) => (pre V17_level1)) 
and ((V16_level = V17_level1) => (if (not (set and treset)) then (V16_level = V17_level1) else true)) 
and (V16_level => (if (not (set and treset)) then (V16_level = V17_level1) else true)) 
and ((if (set and (not (pre V16_level))) then true else (if treset then false else (pre V16_level))) => (if set then true else (if treset then false else (pre V17_level1)))) 
and (V16_level => V17_level1) 
and ((set and (not (pre V16_level))) => (if (set and (not (pre V16_level))) then true else (if treset then false else (pre V16_level)))) 
and ((set and (not (pre V16_level))) => set) 
and ((if treset then false else (pre V16_level)) => (V16_level = V17_level1)) 
and ((if treset then false else (pre V17_level1)) => (not (set and treset))) 
and ((if treset then false else (pre V16_level)) => (pre V16_level)) 
and ((if treset then false else (pre V17_level1)) => (pre V17_level1)) 
and ((set and treset) => (if (not (set and treset)) then (V16_level = V17_level1) else true)) 
and ((set and treset) => treset) 
and (set => (if (not (set and treset)) then (V16_level = V17_level1) else true)) 
and (set => (if set then true else (if treset then false else (pre V17_level1)))) 
and ((set and treset) => (if set then true else (if treset then false else (pre V17_level1)))) 
and (treset => (if (not (set and treset)) then (V16_level = V17_level1) else true)) 
and ((set and treset) => set) 
and ((if treset then false else (pre V16_level)) => (if (set and (not (pre V16_level))) then true else (if treset then false else (pre V16_level)))) 
and ((if treset then false else (pre V17_level1)) => (if set then true else (if treset then false else (pre V17_level1)))) 
and ((set and (not (pre V16_level))) => (V16_level = V17_level1)) 
and ((set and (not (pre V16_level))) => (not (pre V16_level))) 
and (V16_level => (V16_level = V17_level1)) 
and  true ));
tel.

