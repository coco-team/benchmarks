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
  V47_pOK = (true -> (not (((pre V43_avance0) and V45_retard0) or ((pre 
  V45_retard0) and V43_avance0))));
  V48_ast = (V157_H0 and V158_H1);
  V157_H0 = (true -> ((if (pre V45_retard0) then (not S) else true) and (if (
  (pre V159_c) >= 9) then (not B0) else true)));
  V158_H1 = (true -> ((if (pre V46_retard1) then (not S) else true) and (if (
  (pre V160_c) >= 9) then (not B1) else true)));
  V159_c = (0 -> (if ((pre V43_avance0) or V43_avance0) then (if B0 then ((pre 
  V159_c) + 1) else (pre V159_c)) else 0));
  V160_c = (0 -> (if ((pre V44_avance1) or V44_avance1) then (if B1 then ((pre 
  V160_c) + 1) else (pre V160_c)) else 0));
  V165_X = ((((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) and (V40_nS < 1)) 
  and (V41_diff0 < 32767));
  V170_Sofar = (V165_X -> (V165_X or (pre V170_Sofar)));
  --%PROPERTY  OK=true;



-- 162 implications. 
assert (true -> (((pre V170_Sofar) = (not (((pre V43_avance0) and V45_retard0) or ((pre V45_retard0) and V43_avance0)))) 
and ((not (((pre V43_avance0) and V45_retard0) or ((pre V45_retard0) and V43_avance0))) = (V170_Sofar => (pre V47_pOK))) 
and ((V170_Sofar => (pre V47_pOK)) = (pre V47_pOK)) 
and ((pre V47_pOK) = true) 
and (true = V170_Sofar) 
and (V170_Sofar = (V165_X or (pre V170_Sofar))) 
and (V48_ast = (V157_H0 and V158_H1)) 
and (V165_X = (((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) and (V40_nS < 1))) 
and ((((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) and (V40_nS < 1)) = ((((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) and (V40_nS < 1)) and (V41_diff0 < 32767))) 
and ((if (not (pre V44_avance1)) then (V42_diff1 >= 10) else (V42_diff1 > 0)) = V44_avance1) 
and (V43_avance0 = (if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0))) 
and (V45_retard0 = (if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0))) 
and (false = ((pre V43_avance0) and V45_retard0)) 
and (((pre V43_avance0) and V45_retard0) = ((pre V45_retard0) and V43_avance0)) 
and (((pre V45_retard0) and V43_avance0) = (((pre V43_avance0) and V45_retard0) or ((pre V45_retard0) and V43_avance0))) 
and ((V41_diff0 <= (- 10)) => V45_retard0) 
and ((not (pre V45_retard0)) => (if (pre V45_retard0) then (not S) else true)) 
and (((if (pre V45_retard0) then (not S) else true) and (if ((pre V159_c) >= 9) then (not B0) else true)) => V157_H0) 
and (((if (pre V45_retard0) then (not S) else true) and (if ((pre V159_c) >= 9) then (not B0) else true)) => (if ((pre V159_c) >= 9) then (not B0) else true)) 
and ((pre V45_retard0) => (V41_diff0 < 32767)) 
and ((pre V45_retard0) => (if ((pre V159_c) >= 9) then (not B0) else true)) 
and ((not (pre V46_retard1)) => (if (pre V46_retard1) then (not S) else true)) 
and ((V42_diff1 <= (- 10)) => (if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0))) 
and ((V41_diff0 >= 10) => V43_avance0) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V160_c) >= 9) then (not B1) else true)) => (if ((pre V160_c) >= 9) then (not B1) else true)) 
and (V45_retard0 => (V41_diff0 < 32767)) 
and ((V41_diff0 <= (- 10)) => (not (pre V43_avance0))) 
and ((V41_diff0 <= (- 10)) => (if ((pre V159_c) >= 9) then (not B0) else true)) 
and (V45_retard0 => (not (pre V43_avance0))) 
and (V45_retard0 => (if ((pre V159_c) >= 9) then (not B0) else true)) 
and ((pre V45_retard0) => (not (pre V43_avance0))) 
and ((V48_ast and (V38_nB0 < 1)) => (V41_diff0 < 32767)) 
and ((V48_ast and (V38_nB0 < 1)) => V157_H0) 
and ((V48_ast and (V38_nB0 < 1)) => (V38_nB0 < 1)) 
and (V48_ast => V157_H0) 
and (V48_ast => V158_H1) 
and ((V41_diff0 <= (- 10)) => (V41_diff0 < 32767)) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (if ((pre V160_c) >= 9) then (not B1) else true)) 
and ((pre V46_retard1) => (if ((pre V160_c) >= 9) then (not B1) else true)) 
and ((pre V46_retard1) => (not (pre V44_avance1))) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (not (pre V44_avance1))) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V160_c) >= 9) then (not B1) else true)) => (if (pre V46_retard1) then (not S) else true)) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V160_c) >= 9) then (not B1) else true)) => V158_H1) 
and (((pre V159_c) >= 9) => (not (pre V45_retard0))) 
and (((pre V159_c) >= 9) => (if (pre V45_retard0) then (not S) else true)) 
and ((V42_diff1 >= 10) => (if (not (pre V44_avance1)) then (V42_diff1 >= 10) else (V42_diff1 > 0))) 
and ((not (pre V43_avance0)) => (V41_diff0 < 32767)) 
and (V43_avance0 => (not (pre V45_retard0))) 
and (V43_avance0 => (if (pre V45_retard0) then (not S) else true)) 
and (V43_avance0 => ((pre V43_avance0) or V43_avance0)) 
and (((pre V160_c) >= 9) => (not (pre V46_retard1))) 
and ((pre V43_avance0) => (not (pre V45_retard0))) 
and ((pre V43_avance0) => ((pre V43_avance0) or V43_avance0)) 
and ((if (not (pre V44_avance1)) then (V42_diff1 >= 10) else (V42_diff1 > 0)) => (not (pre V46_retard1))) 
and ((V42_diff1 >= 10) => (not (pre V46_retard1))) 
and ((if (not (pre V44_avance1)) then (V42_diff1 >= 10) else (V42_diff1 > 0)) => ((pre V44_avance1) or V44_avance1)) 
and (((pre V43_avance0) or V43_avance0) => (not (pre V45_retard0))) 
and ((pre V44_avance1) => ((pre V44_avance1) or V44_avance1)) 
and ((V48_ast and (V38_nB0 < 1)) => V48_ast) 
and ((V38_nB0 < 1) => (V41_diff0 < 32767)) 
and ((V42_diff1 < 0) => (if ((pre V160_c) >= 9) then (not B1) else true)) 
and ((V42_diff1 < 0) => (not (pre V44_avance1))) 
and ((V42_diff1 > 0) => (not (pre V46_retard1))) 
and (V165_X => ((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1))) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (V42_diff1 < 0)) 
and (V45_retard0 => (V41_diff0 < 0)) 
and ((V41_diff0 < 0) => (V41_diff0 < 32767)) 
and ((V41_diff0 < 0) => (if ((pre V159_c) >= 9) then (not B0) else true)) 
and ((V41_diff0 < 0) => (not (pre V43_avance0))) 
and ((V41_diff0 > 0) => (not (pre V45_retard0))) 
and ((if (not (pre V44_avance1)) then (V42_diff1 >= 10) else (V42_diff1 > 0)) => (V42_diff1 > 0)) 
and (V165_X => V48_ast) 
and (V165_X => V158_H1) 
and (V165_X => (V40_nS < 1)) 
and (((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) => (V48_ast and (V38_nB0 < 1))) 
and ((not B1) => (if ((pre V160_c) >= 9) then (not B1) else true)) 
and (V43_avance0 => (V41_diff0 > 0)) 
and (((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) => V48_ast) 
and ((not B0) => (if ((pre V159_c) >= 9) then (not B0) else true)) 
and (((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) => (V41_diff0 < 32767)) 
and (((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) => V157_H0) 
and (((V48_ast and (V38_nB0 < 1)) and (V39_nB1 < 1)) => (V39_nB1 < 1)) 
and ((not S) => (if (pre V45_retard0) then (not S) else true)) 
and ((not S) => (if (pre V46_retard1) then (not S) else true)) 
and ((V39_nB1 - V40_nS) = V42_diff1) 
and ((V38_nB0 - V40_nS) = V41_diff0) 
and (0 <=(if ((pre V43_avance0) or V43_avance0) then (if B0 then ((pre V159_c) + 1) else (pre V159_c)) else 0)) 
and (0 <=(pre V160_c)) 
and (0 <=(if ((pre V44_avance1) or V44_avance1) then (if B1 then ((pre V160_c) + 1) else (pre V160_c)) else 0)) 
and (0 <=(pre V39_nB1)) 
and (0 <=(pre V40_nS)) 
and (0 <=(if B1 then ((pre V160_c) + 1) else (pre V160_c))) 
and (0 <=V39_nB1) 
and (0 <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and (0 <=V40_nS) 
and (0 <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and (0 <=V38_nB0) 
and (0 <=1) 
and (0 <=((pre V160_c) + 1)) 
and (0 <=((pre V39_nB1) + 1)) 
and (0 <=((pre V40_nS) + 1)) 
and (0 <=9) 
and (0 <=10) 
and (0 <=32767) 
and ((pre V159_c) <=(if B0 then ((pre V159_c) + 1) else (pre V159_c))) 
and ((pre V159_c) <=((pre V159_c) + 1)) 
and ((pre V160_c) <=(if B1 then ((pre V160_c) + 1) else (pre V160_c))) 
and ((pre V160_c) <=((pre V160_c) + 1)) 
and ((if B1 then ((pre V160_c) + 1) else (pre V160_c)) <=((pre V160_c) + 1)) 
and ((if B0 then ((pre V159_c) + 1) else (pre V159_c)) <=((pre V159_c) + 1)) 
and (1 <=((pre V160_c) + 1)) 
and (1 <=((pre V39_nB1) + 1)) 
and (1 <=((pre V40_nS) + 1)) 
and (1 <=9) 
and (1 <=10) 
and (1 <=32767) 
and ((- 10) <=0) 
and (0 <=(pre V159_c)) 
and ((pre V159_c) <=(pre V38_nB0)) 
and ((pre V38_nB0) <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and ((V39_nB1 - V40_nS) <=V39_nB1) 
and (V39_nB1 <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and ((if ((pre V43_avance0) or V43_avance0) then (if B0 then ((pre V159_c) + 1) else (pre V159_c)) else 0) <=(if B0 then ((pre V159_c) + 1) else (pre V159_c))) 
and ((if B0 then ((pre V159_c) + 1) else (pre V159_c)) <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and ((pre V160_c) <=(pre V39_nB1)) 
and ((pre V39_nB1) <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and ((if ((pre V44_avance1) or V44_avance1) then (if B1 then ((pre V160_c) + 1) else (pre V160_c)) else 0) <=(if B1 then ((pre V160_c) + 1) else (pre V160_c))) 
and ((if B1 then ((pre V160_c) + 1) else (pre V160_c)) <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and ((pre V40_nS) <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((if S then ((pre V40_nS) + 1) else (pre V40_nS)) <=((pre V40_nS) + 1)) 
and ((V38_nB0 - V40_nS) <=V38_nB0) 
and (V38_nB0 <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and (V40_nS <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((if S then ((pre V40_nS) + 1) else (pre V40_nS)) <=((pre V40_nS) + 1)) 
and (1 <=((pre V159_c) + 1)) 
and (((pre V159_c) + 1) <=((pre V38_nB0) + 1)) 
and (((pre V160_c) + 1) <=((pre V39_nB1) + 1)) 
and (9 <=10) 
and (10 <=32767) 
and  true ));
tel.

