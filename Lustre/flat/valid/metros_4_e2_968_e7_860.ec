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
  V47_ast: bool;
  V156_H0: bool;
  V157_H1: bool;
  V158_c: int;
  V159_c: int;
  V169_Sofar: bool;

let
  OK = ((V169_Sofar => true) -> (((pre V38_nB0) - (pre V39_nB1)) <= 30));
  V38_nB0 = (0 -> (if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)));
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
  V47_ast = (V156_H0 and V157_H1);
  V156_H0 = (true -> ((if (pre V45_retard0) then (not S) else true) and (if (
  (pre V158_c) >= 9) then (not B0) else true)));
  V157_H1 = (true -> ((if (pre V46_retard1) then (not S) else true) and (if (
  (pre V159_c) >= 9) then (not B1) else true)));
  V158_c = (0 -> (if ((pre V43_avance0) and V43_avance0) then (if B0 then ((
  (pre V158_c) - 1) + 1) else (pre V158_c)) else 0));
  V159_c = (0 -> (if ((pre V44_avance1) and V44_avance1) then (if B1 then ((
  (pre V159_c) - 1) + 1) else (pre V159_c)) else 0));
  V169_Sofar = (V47_ast -> (V47_ast or (pre V169_Sofar)));
  --%PROPERTY OK;


tel.

