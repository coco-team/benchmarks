node top
  (diff: int)
returns
  (OK: bool);

var
  V22_speed: int;
  V23_plus: bool;
  V24_minus: bool;
  V25_realistic: bool;
  V93_X: bool;
  V98_Sofar: bool;
  V109_cpt: int;
  V110_acceptable: bool;

let
  OK = (V98_Sofar => (true -> ((pre V109_cpt) <= 7)));
  V22_speed = (0 -> ((pre V22_speed) + diff));
  V23_plus = (V22_speed <= 9);
  V24_minus = (V22_speed >= 11);
  V25_realistic = ((((-4 <= diff) or (diff <= 4)) and (if (true -> (pre 
  V23_plus)) then (diff >= 1) else true)) and (if (false -> (pre V24_minus)) 
  then (diff <= -1) else true));
  V93_X = ((V25_realistic and (0 <= V22_speed)) and (V22_speed < 16));
  V98_Sofar = (V93_X -> (V93_X or (pre V98_Sofar)));
  V109_cpt = (0 -> (if V110_acceptable then 0 else ((pre V109_cpt) + 1)));
  V110_acceptable = ((8 <= V22_speed) and (V22_speed <= 12));
  --%PROPERTY  OK=true;



-- 62 implications. 
assert (true -> ((true = (((- 4) <= diff) or (diff <= 4))) 
and (((((- 4) <= diff) or (diff <= 4)) and (if (pre V23_plus) then (diff >= 1) else true)) = (if (pre V23_plus) then (diff >= 1) else true)) 
and (V93_X = ((V25_realistic and (0 <= V22_speed)) and (V22_speed < 16))) 
and (V110_acceptable = ((8 <= V22_speed) and (V22_speed <= 12))) 
and ((((((- 4) <= diff) or (diff <= 4)) and (if (pre V23_plus) then (diff >= 1) else true)) and (if (pre V24_minus) then (diff <= (- 1)) else true)) => ((((- 4) <= diff) or (diff <= 4)) and (if (pre V23_plus) then (diff >= 1) else true))) 
and (((pre V109_cpt) <= 7) => (V98_Sofar => ((pre V109_cpt) <= 7))) 
and (V98_Sofar => (V93_X or (pre V98_Sofar))) 
and ((diff >= 1) => ((((- 4) <= diff) or (diff <= 4)) and (if (pre V23_plus) then (diff >= 1) else true))) 
and (V25_realistic => ((((- 4) <= diff) or (diff <= 4)) and (if (pre V23_plus) then (diff >= 1) else true))) 
and ((V25_realistic and (0 <= V22_speed)) => V25_realistic) 
and ((pre V23_plus) => (if (pre V24_minus) then (diff <= (- 1)) else true)) 
and ((V25_realistic and (0 <= V22_speed)) => (0 <= V22_speed)) 
and ((((((- 4) <= diff) or (diff <= 4)) and (if (pre V23_plus) then (diff >= 1) else true)) and (if (pre V24_minus) then (diff <= (- 1)) else true)) => (if (pre V24_minus) then (diff <= (- 1)) else true)) 
and ((diff >= 1) => ((- 4) <= diff)) 
and ((diff <= (- 1)) => (diff <= 4)) 
and (V93_X => (V22_speed < 16)) 
and ((V22_speed <= 12) => (V22_speed < 16)) 
and (V93_X => (V25_realistic and (0 <= V22_speed))) 
and (V93_X => V98_Sofar) 
and ((8 <= V22_speed) => (0 <= V22_speed)) 
and (V110_acceptable => V98_Sofar) 
and (V110_acceptable => (V22_speed < 16)) 
and (V110_acceptable => (V22_speed <= 12)) 
and ((pre V24_minus) => ((((- 4) <= diff) or (diff <= 4)) and (if (pre V23_plus) then (diff >= 1) else true))) 
and ((pre V98_Sofar) => (V93_X or (pre V98_Sofar))) 
and ((V22_speed >= 11) => ((((- 4) <= diff) or (diff <= 4)) and (if (pre V23_plus) then (diff >= 1) else true))) 
and ((V22_speed >= 11) => (8 <= V22_speed)) 
and ((V22_speed <= 9) => (V22_speed <= 12)) 
and (V110_acceptable => (0 <= V22_speed)) 
and (V110_acceptable => (8 <= V22_speed)) 
and (0 <=(if V110_acceptable then 0 else ((pre V109_cpt) + 1))) 
and (0 <=1) 
and (0 <=4) 
and (0 <=7) 
and (0 <=8) 
and (0 <=9) 
and (0 <=11) 
and (0 <=12) 
and (0 <=16) 
and (1 <=4) 
and (1 <=7) 
and (1 <=8) 
and (1 <=9) 
and (1 <=11) 
and (1 <=12) 
and (1 <=16) 
and ((- 4) <=(- 1)) 
and ((- 1) <=0) 
and (0 <=(pre V109_cpt)) 
and ((pre V109_cpt) <=((pre V109_cpt) + 1)) 
and ((if V110_acceptable then 0 else ((pre V109_cpt) + 1)) <=((pre V109_cpt) + 1)) 
and (1 <=((pre V109_cpt) + 1)) 
and (4 <=7) 
and (7 <=8) 
and (8 <=9) 
and (9 <=11) 
and (11 <=12) 
and (12 <=16) 
and  true ));
tel.

