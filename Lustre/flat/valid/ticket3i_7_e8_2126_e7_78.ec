node top
  (e1: bool;
  e2: bool;
  e3: bool;
  e4: bool;
  e5: bool;
  e6: bool;
  e7: bool;
  e8: bool;
  e9: bool;
  init_a1: int;
  init_a2: int;
  init_a3: int;
  init_t: int)
returns
  (OK: bool);

var
  V62_p1: int;
  V63_p2: int;
  V64_p3: int;
  V65_t: int;
  V66_s: int;
  V67_a1: int;
  V68_a2: int;
  V69_a3: int;
  V70_erreur_ticket3i: bool;
  V71_env: bool;
  V138_g1: bool;
  V139_g2: bool;
  V140_g3: bool;
  V141_g4: bool;
  V142_g5: bool;
  V143_g6: bool;
  V144_g7: bool;
  V145_g8: bool;
  V146_g9: bool;
  V164_X: bool;

let
  OK = (V71_env => (((((((0 <= V62_p1) and (V62_p1 <= 3)) and (0 <= V63_p2)) 
  and (V63_p2 <= 3)) and (0 <= V64_p3)) and (V64_p3 <= 3)) and (((V62_p1 + 
  V63_p2) + V64_p3) <= 9)));
  V62_p1 = (0 -> (if e1 then (if V138_g1 then 1 else (pre V62_p1)) else (if e2 
  then (if V139_g2 then 2 else (pre V62_p1)) else (if e3 then (if V140_g3 then 
  0 else (pre V62_p1)) else (pre V62_p1)))));
  V63_p2 = (0 -> (if e4 then (if V141_g4 then 1 else (pre V63_p2)) else (if e5 
  then (if V142_g5 then 2 else (pre V63_p2)) else (if e6 then (if V143_g6 then 
  0 else (pre V63_p2)) else (pre V63_p2)))));
  V64_p3 = (0 -> (if e7 then (if V144_g7 then 1 else (pre V64_p3)) else (if e8 
  then (if V145_g8 then 2 else (pre V64_p3)) else (if e9 then (if V146_g9 then 
  0 else (pre V64_p3)) else (pre V64_p3)))));
  V65_t = (init_t -> (if e1 then (if V138_g1 then ((pre V65_t) + 1) else (pre 
  V65_t)) else (if e4 then (if V141_g4 then ((pre V65_t) + 1) else (pre V65_t)) 
  else (if e7 then (if V144_g7 then ((pre V65_t) + 1) else (pre V65_t)) else 
  (pre V65_t)))));
  V66_s = (V65_t -> (if e3 then (if V140_g3 then ((pre V66_s) + 1) else (pre 
  V66_s)) else (if e6 then (if V143_g6 then ((pre V66_s) + 1) else (pre V66_s)) 
  else (if e9 then (if V146_g9 then ((pre V66_s) + 1) else (pre V66_s)) else 
  (pre V66_s)))));
  V67_a1 = (init_a1 -> (if e1 then (if V138_g1 then (pre V65_t) else (pre 
  V67_a1)) else (pre V67_a1)));
  V68_a2 = (init_a2 -> (if e4 then (if V141_g4 then (pre V65_t) else (pre 
  V68_a2)) else (pre V68_a2)));
  V69_a3 = (init_a3 -> (if e7 then (if V144_g7 then (pre V65_t) else (pre 
  V69_a3)) else (pre V69_a3)));
  V70_erreur_ticket3i = (if (((V62_p1 >= 3) and (V63_p2 >= 3)) or (V64_p3 >= 3)
  ) then true else false);
  V71_env = (V164_X -> (V164_X or (pre V71_env)));
  V138_g1 = ((pre V62_p1) = 0);
  V139_g2 = (((pre V62_p1) = 1) and ((pre V66_s) >= V67_a1));
  V140_g3 = ((pre V62_p1) = 2);
  V141_g4 = ((pre V63_p2) = 0);
  V142_g5 = (((pre V63_p2) = 1) and ((pre V66_s) >= V68_a2));
  V143_g6 = ((pre V63_p2) = 2);
  V144_g7 = ((pre V64_p3) = 0);
  V145_g8 = (((pre V64_p3) = 1) and ((pre V66_s) >= V69_a3));
  V146_g9 = ((pre V64_p3) = 2);
  V164_X = ((((((((((((((((((((((not e1) and (not e2)) and (not e3)) and (not 
  e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) or 
  ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not 
  e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) 
  and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and 
  (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not 
  e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) 
  or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and 
  (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and 
  (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and 
  (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and 
  (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or 
  (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and 
  (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not 
  e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) 
  and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and 
  (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) 
  and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0)) and (init_t >= 0)
  );
  --%PROPERTY OK;


tel.

