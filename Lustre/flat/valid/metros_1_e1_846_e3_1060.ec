node top
  (B0: bool;
  B1: bool;
  S: bool)
returns
  (OK: bool);

var
  V38_nB0: int;
  V39_nB1: int;
  V40_nS: int;
  V41_diff0: int;
  V42_diff1: int;
  V43_avance0: bool;
  V44_avance1: bool;
  V45_retard0: bool;
  V46_retard1: bool;
  V47_pOK: bool;
  V48_ast: bool;
  V157_H0: bool;
  V158_H1: bool;
  V159_c: int;
  V160_c: int;
  V165_X: bool;
  V170_Sofar: bool;

let
  OK = (V170_Sofar => (true -> (pre V47_pOK)));
  V38_nB0 = (0 -> (if B0 then ((pre V38_nB0) - 1) else (pre V38_nB0)));
  V39_nB1 = (0 -> (if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)));
  V40_nS = (0 -> (if S then ((pre V40_nS) + 1) else (pre V40_nS)));
  V41_diff0 = (V38_nB0 - V40_nS);
  V42_diff1 = (V39_nB1 - V40_nS);
  V43_avance0 = (false -> (if (not (pre V43_avance0)) then (V41_diff0 >= 10) 
  else (V41_diff0 > 0)));
  V44_avance1 = (false -> (if (not (pre V44_avance1)) then (V42_diff1 >= 10) 
  else (V42_diff1 > 0)));
  V45_retard0 = (false -> (if (not (pre V45_retard0)) then (V41_diff0 <= -10) 
  else (V41_diff0 < 0)));
  V46_retard1 = (false -> (if (not (pre V46_retard1)) then (V42_diff1 <= -10) 
  else (V42_diff1 < 0)));
  V47_pOK = (true -> (not (((pre V43_avance0) and V45_retard0) or ((pre 
  V45_retard0) and V43_avance0))));
  V48_ast = (V157_H0 and V158_H1);
  V157_H0 = (true -> ((if (pre V45_retard0) then (not S) else true) and (if (
  (pre V159_c) >= 9) then (not B0) else true)));
  V158_H1 = (true -> ((if (pre V46_retard1) then (not S) else true) and (if (
  (pre V160_c) >= 9) then (not B1) else true)));
  V159_c = (0 -> (if ((pre V43_avance0) and V43_avance0) then (if B0 then ((
  (pre V159_c) + 1) + 1) else (pre V159_c)) else 0));
  V160_c = (0 -> (if ((pre V44_avance1) and V44_avance1) then (if B1 then ((
  (pre V160_c) + 1) + 1) else (pre V160_c)) else 0));
  V165_X = ((((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) and (V40_nS < 1)) 
  and (V41_diff0 < 32767));
  V170_Sofar = (V165_X -> (V165_X and (pre V170_Sofar)));
  --%PROPERTY OK;


tel.

