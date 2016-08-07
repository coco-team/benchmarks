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
  OK = ((V169_Sofar => true) -> ((((pre V38_nB0) - (pre V39_nB1)) <= 30) and ((
  (pre V39_nB1) - (pre V38_nB0)) <= 30)));
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
  V158_c = (0 -> (if ((pre V43_avance0) and V43_avance0) then (if B0 then ((pre 
  V158_c) + 1) else (pre V158_c)) else 0));
  V159_c = (0 -> (if ((pre V44_avance1) and V44_avance1) then (if B1 then ((pre 
  V159_c) + 1) else (pre V159_c)) else 0));
  V169_Sofar = (V47_ast -> (V47_ast and (pre V169_Sofar)));
    --%PROPERTY OK=true;



-- 139 implications. 
assert (true -> ((V47_ast = (V156_H0 and V157_H1)) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) = V43_avance0) 
and (V44_avance1 = (if (not (pre V44_avance1)) then (V42_diff1 >= 10) else (V42_diff1 > 0))) 
and ((V42_diff1 <= (- 10)) => (if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0))) 
and ((not (pre V46_retard1)) => (if (pre V46_retard1) then (not S) else true)) 
and (V47_ast => V156_H0) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V159_c) >= 9) then (not B1) else true)) => V157_H1) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V159_c) >= 9) then (not B1) else true)) => (if (pre V46_retard1) then (not S) else true)) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V159_c) >= 9) then (not B1) else true)) => (if ((pre V159_c) >= 9) then (not B1) else true)) 
and ((pre V46_retard1) => (if ((pre V159_c) >= 9) then (not B1) else true)) 
and ((pre V46_retard1) => (not (pre V44_avance1))) 
and (((((pre V38_nB0) - (pre V39_nB1)) <= 30) and (((pre V39_nB1) - (pre V38_nB0)) <= 30)) => (((pre V38_nB0) - (pre V39_nB1)) <= 30)) 
and ((V42_diff1 >= 10) => V44_avance1) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (if ((pre V159_c) >= 9) then (not B1) else true)) 
and (((pre V159_c) >= 9) => (if (pre V46_retard1) then (not S) else true)) 
and (((pre V159_c) >= 9) => (not (pre V46_retard1))) 
and (((pre V159_c) >= 9) => (pre V44_avance1)) 
and ((not (pre V44_avance1)) => (if ((pre V159_c) >= 9) then (not B1) else true)) 
and (((pre V44_avance1) and V44_avance1) => (not (pre V46_retard1))) 
and (((pre V44_avance1) and V44_avance1) => (if (pre V46_retard1) then (not S) else true)) 
and (((pre V44_avance1) and V44_avance1) => (pre V44_avance1)) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (not (pre V44_avance1))) 
and (((pre V44_avance1) and V44_avance1) => V44_avance1) 
and ((pre V44_avance1) => (not (pre V46_retard1))) 
and ((pre V44_avance1) => (if (pre V46_retard1) then (not S) else true)) 
and ((V41_diff0 <= (- 10)) => (not (pre V43_avance0))) 
and ((V41_diff0 <= (- 10)) => (if ((pre V158_c) >= 9) then (not B0) else true)) 
and ((V41_diff0 <= (- 10)) => (if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0))) 
and ((not (pre V45_retard0)) => (if (pre V45_retard0) then (not S) else true)) 
and ((V47_ast and (pre V169_Sofar)) => V157_H1) 
and (V47_ast => V157_H1) 
and (((((pre V38_nB0) - (pre V39_nB1)) <= 30) and (((pre V39_nB1) - (pre V38_nB0)) <= 30)) => (((pre V39_nB1) - (pre V38_nB0)) <= 30)) 
and (((if (pre V45_retard0) then (not S) else true) and (if ((pre V158_c) >= 9) then (not B0) else true)) => V156_H0) 
and (((if (pre V45_retard0) then (not S) else true) and (if ((pre V158_c) >= 9) then (not B0) else true)) => (if (pre V45_retard0) then (not S) else true)) 
and (V44_avance1 => (not (pre V46_retard1))) 
and ((V42_diff1 >= 10) => (not (pre V46_retard1))) 
and (V44_avance1 => (if (pre V46_retard1) then (not S) else true)) 
and ((V42_diff1 >= 10) => (if (pre V46_retard1) then (not S) else true)) 
and (((if (pre V45_retard0) then (not S) else true) and (if ((pre V158_c) >= 9) then (not B0) else true)) => (if ((pre V158_c) >= 9) then (not B0) else true)) 
and ((V42_diff1 <= (- 10)) => (if ((pre V159_c) >= 9) then (not B1) else true)) 
and (((pre V44_avance1) and V44_avance1) => (V42_diff1 > 0)) 
and (V44_avance1 => (V42_diff1 > 0)) 
and ((pre V45_retard0) => (if ((pre V158_c) >= 9) then (not B0) else true)) 
and ((V41_diff0 >= 10) => (if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0))) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (if ((pre V158_c) >= 9) then (not B0) else true)) 
and (((pre V158_c) >= 9) => (pre V43_avance0)) 
and ((not (pre V43_avance0)) => (if ((pre V158_c) >= 9) then (not B0) else true)) 
and (((pre V158_c) >= 9) => (not (pre V45_retard0))) 
and (((pre V43_avance0) and V43_avance0) => (not (pre V45_retard0))) 
and (((pre V43_avance0) and V43_avance0) => (pre V43_avance0)) 
and (((pre V43_avance0) and V43_avance0) => (if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0))) 
and ((pre V43_avance0) => (not (pre V45_retard0))) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (not (pre V43_avance0))) 
and ((V41_diff0 >= 10) => (not (pre V45_retard0))) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) => (not (pre V45_retard0))) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (V41_diff0 < 0)) 
and ((V42_diff1 < 0) => (not (pre V44_avance1))) 
and ((V42_diff1 > 0) => (not (pre V46_retard1))) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) => (V41_diff0 > 0)) 
and ((not B0) => (if ((pre V158_c) >= 9) then (not B0) else true)) 
and ((V41_diff0 < 0) => (if ((pre V158_c) >= 9) then (not B0) else true)) 
and ((V41_diff0 < 0) => (not (pre V43_avance0))) 
and ((V41_diff0 > 0) => (not (pre V45_retard0))) 
and ((not S) => (if (pre V46_retard1) then (not S) else true)) 
and ((not S) => (if (pre V45_retard0) then (not S) else true)) 
and ((V39_nB1 - V40_nS) = V42_diff1) 
and (V41_diff0 = (V38_nB0 - V40_nS)) 
and (0 <=(if ((pre V44_avance1) and V44_avance1) then (if B1 then ((pre V159_c) + 1) else (pre V159_c)) else 0)) 
and (0 <=(pre V158_c)) 
and (0 <=(if ((pre V43_avance0) and V43_avance0) then (if B0 then ((pre V158_c) + 1) else (pre V158_c)) else 0)) 
and (0 <=(pre V40_nS)) 
and (0 <=(pre V38_nB0)) 
and (0 <=V39_nB1) 
and (0 <=V40_nS) 
and (0 <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and (0 <=(if B0 then ((pre V158_c) + 1) else (pre V158_c))) 
and (0 <=V38_nB0) 
and (0 <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and (0 <=1) 
and (0 <=((pre V158_c) + 1)) 
and (0 <=((pre V40_nS) + 1)) 
and (0 <=((pre V38_nB0) + 1)) 
and (0 <=9) 
and (0 <=10) 
and (0 <=30) 
and ((pre V159_c) <=(if B1 then ((pre V159_c) + 1) else (pre V159_c))) 
and ((pre V159_c) <=((pre V159_c) + 1)) 
and ((if ((pre V44_avance1) and V44_avance1) then (if B1 then ((pre V159_c) + 1) else (pre V159_c)) else 0) <=V39_nB1) 
and ((pre V158_c) <=(if B0 then ((pre V158_c) + 1) else (pre V158_c))) 
and ((pre V158_c) <=((pre V158_c) + 1)) 
and ((if ((pre V43_avance0) and V43_avance0) then (if B0 then ((pre V158_c) + 1) else (pre V158_c)) else 0) <=V38_nB0) 
and ((if B1 then ((pre V159_c) + 1) else (pre V159_c)) <=((pre V159_c) + 1)) 
and ((if B0 then ((pre V158_c) + 1) else (pre V158_c)) <=((pre V158_c) + 1)) 
and (1 <=((pre V158_c) + 1)) 
and (1 <=((pre V40_nS) + 1)) 
and (1 <=((pre V38_nB0) + 1)) 
and (1 <=9) 
and (1 <=10) 
and (1 <=30) 
and ((- 10) <=0) 
and (0 <=(pre V159_c)) 
and ((pre V159_c) <=(pre V39_nB1)) 
and ((pre V39_nB1) <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and ((V39_nB1 - V40_nS) <=V39_nB1) 
and (V39_nB1 <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and (((pre V39_nB1) - (pre V38_nB0)) <=(pre V39_nB1)) 
and ((pre V39_nB1) <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and ((if ((pre V44_avance1) and V44_avance1) then (if B1 then ((pre V159_c) + 1) else (pre V159_c)) else 0) <=(if B1 then ((pre V159_c) + 1) else (pre V159_c))) 
and ((if B1 then ((pre V159_c) + 1) else (pre V159_c)) <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and ((pre V158_c) <=(pre V38_nB0)) 
and ((pre V38_nB0) <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and ((if ((pre V43_avance0) and V43_avance0) then (if B0 then ((pre V158_c) + 1) else (pre V158_c)) else 0) <=(if B0 then ((pre V158_c) + 1) else (pre V158_c))) 
and ((if B0 then ((pre V158_c) + 1) else (pre V158_c)) <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and ((pre V40_nS) <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((if S then ((pre V40_nS) + 1) else (pre V40_nS)) <=((pre V40_nS) + 1)) 
and (((pre V38_nB0) - (pre V39_nB1)) <=(pre V38_nB0)) 
and ((pre V38_nB0) <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and (V41_diff0 <=V38_nB0) 
and (V38_nB0 <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and (V40_nS <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((if S then ((pre V40_nS) + 1) else (pre V40_nS)) <=((pre V40_nS) + 1)) 
and (1 <=((pre V159_c) + 1)) 
and (((pre V159_c) + 1) <=((pre V39_nB1) + 1)) 
and (((pre V158_c) + 1) <=((pre V38_nB0) + 1)) 
and (9 <=10) 
and (10 <=30) 
and  true ));
tel.

