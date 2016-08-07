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
  V158_H0: bool;
  V159_H1: bool;
  V160_c: int;
  V161_c: int;
  V170_Sofar: bool;

let
  OK = (true -> (V170_Sofar => ((-10 <= (pre V41_diff0)) and ((pre V41_diff0) 
  <= 20))));
  V38_nB0 = (0 -> (if B0 then (((pre V38_nB0) + 1) + 1) else (pre V38_nB0)));
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
  V47_ast = (V158_H0 and V159_H1);
  V158_H0 = (true -> ((if (pre V45_retard0) then (not S) else true) and (if (
  (pre V160_c) >= 9) then (not B0) else true)));
  V159_H1 = (true -> ((if (pre V46_retard1) then (not S) else true) and (if (
  (pre V161_c) >= 9) then (not B1) else true)));
  V160_c = (0 -> (if ((pre V43_avance0) and V43_avance0) then (if B0 then ((
  (pre V160_c) - 1) + 1) else (pre V160_c)) else 0));
  V161_c = (0 -> (if ((pre V44_avance1) and V44_avance1) then (if B1 then ((
  (pre V161_c) - 1) + 1) else (pre V161_c)) else 0));
  V170_Sofar = (V47_ast -> (V47_ast and (pre V170_Sofar)));
  --%PROPERTY  OK=true;



-- 151 implications. 
assert (true -> (((if ((pre V160_c) >= 9) then (not B0) else true) = true) 
and (true = (if ((pre V161_c) >= 9) then (not B1) else true)) 
and (V47_ast = (V158_H0 and V159_H1)) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V161_c) >= 9) then (not B1) else true)) = (if (pre V46_retard1) then (not S) else true)) 
and ((if (pre V45_retard0) then (not S) else true) = ((if (pre V45_retard0) then (not S) else true) and (if ((pre V160_c) >= 9) then (not B0) else true))) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) = V43_avance0) 
and (V44_avance1 = (if (not (pre V44_avance1)) then (V42_diff1 >= 10) else (V42_diff1 > 0))) 
and (false = ((pre V161_c) >= 9)) 
and (((pre V161_c) >= 9) = ((pre V160_c) >= 9)) 
and ((V42_diff1 <= (- 10)) => (if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0))) 
and (V170_Sofar => V47_ast) 
and ((((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20)) => (V170_Sofar => (((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20)))) 
and ((((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20)) => ((pre V41_diff0) <= 20)) 
and ((V41_diff0 <= (- 10)) => (if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0))) 
and (V47_ast => V159_H1) 
and ((pre V170_Sofar) => ((- 10) <= (pre V41_diff0))) 
and ((V47_ast and (pre V170_Sofar)) => ((- 10) <= (pre V41_diff0))) 
and ((V47_ast and (pre V170_Sofar)) => V170_Sofar) 
and ((not (pre V46_retard1)) => V159_H1) 
and ((not (pre V46_retard1)) => ((if (pre V46_retard1) then (not S) else true) and (if ((pre V161_c) >= 9) then (not B1) else true))) 
and ((not (pre V45_retard0)) => (if (pre V45_retard0) then (not S) else true)) 
and ((V47_ast and (pre V170_Sofar)) => V158_H0) 
and ((V47_ast and (pre V170_Sofar)) => (pre V170_Sofar)) 
and (V47_ast => V158_H0) 
and ((((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20)) => ((- 10) <= (pre V41_diff0))) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V161_c) >= 9) then (not B1) else true)) => V159_H1) 
and ((if (pre V45_retard0) then (not S) else true) => V158_H0) 
and ((pre V46_retard1) => (not (pre V44_avance1))) 
and ((pre V45_retard0) => (not (pre V43_avance0))) 
and ((V42_diff1 >= 10) => V44_avance1) 
and (((pre V44_avance1) and V44_avance1) => (V42_diff1 > 0)) 
and (((pre V44_avance1) and V44_avance1) => (not (pre V46_retard1))) 
and (((pre V44_avance1) and V44_avance1) => (pre V44_avance1)) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (not (pre V44_avance1))) 
and (((pre V44_avance1) and V44_avance1) => V44_avance1) 
and (((pre V43_avance0) and V43_avance0) => ((- 10) <= (pre V41_diff0))) 
and (((pre V43_avance0) and V43_avance0) => V158_H0) 
and (((pre V43_avance0) and V43_avance0) => (not (pre V45_retard0))) 
and (((pre V43_avance0) and V43_avance0) => (pre V43_avance0)) 
and ((not (pre V43_avance0)) => ((pre V41_diff0) <= 20)) 
and ((V41_diff0 >= 10) => (if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0))) 
and ((V41_diff0 <= (- 10)) => (V170_Sofar => (((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20)))) 
and ((V41_diff0 <= (- 10)) => ((pre V41_diff0) <= 20)) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (V170_Sofar => (((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20)))) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => ((pre V41_diff0) <= 20)) 
and ((pre V44_avance1) => V159_H1) 
and ((pre V44_avance1) => (not (pre V46_retard1))) 
and ((V42_diff1 >= 10) => (not (pre V46_retard1))) 
and (V44_avance1 => (not (pre V46_retard1))) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (V42_diff1 < 0)) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (not (pre V43_avance0))) 
and ((pre V43_avance0) => ((- 10) <= (pre V41_diff0))) 
and ((pre V43_avance0) => V158_H0) 
and ((pre V43_avance0) => (not (pre V45_retard0))) 
and (V44_avance1 => (V42_diff1 > 0)) 
and ((V42_diff1 >= 10) => V159_H1) 
and ((V42_diff1 >= 10) => ((if (pre V46_retard1) then (not S) else true) and (if ((pre V161_c) >= 9) then (not B1) else true))) 
and (((pre V43_avance0) and V43_avance0) => (if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0))) 
and ((V41_diff0 > 0) => ((- 10) <= (pre V41_diff0))) 
and ((V41_diff0 > 0) => V158_H0) 
and ((V41_diff0 > 0) => (if (pre V45_retard0) then (not S) else true)) 
and ((V42_diff1 > 0) => (not (pre V46_retard1))) 
and ((V42_diff1 > 0) => V159_H1) 
and ((V42_diff1 < 0) => (not (pre V44_avance1))) 
and ((V41_diff0 >= 10) => ((- 10) <= (pre V41_diff0))) 
and ((V41_diff0 >= 10) => V158_H0) 
and ((V41_diff0 >= 10) => (not (pre V45_retard0))) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) => ((- 10) <= (pre V41_diff0))) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) => V158_H0) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) => (not (pre V45_retard0))) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (V41_diff0 < 0)) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) => (V41_diff0 > 0)) 
and ((V41_diff0 < 0) => (not (pre V43_avance0))) 
and ((not S) => V47_ast) 
and ((not S) => ((if (pre V46_retard1) then (not S) else true) and (if ((pre V161_c) >= 9) then (not B1) else true))) 
and ((not S) => V158_H0) 
and ((not S) => (if (pre V45_retard0) then (not S) else true)) 
and (((pre V161_c) - 1) = ((pre V160_c) - 1)) 
and ((((pre V161_c) - 1) + 1) = (if B0 then (((pre V160_c) - 1) + 1) else (pre V160_c))) 
and ((if B0 then (((pre V160_c) - 1) + 1) else (pre V160_c)) = (pre V161_c)) 
and ((pre V161_c) = 0) 
and (0 = (if ((pre V44_avance1) and V44_avance1) then (if B1 then (((pre V161_c) - 1) + 1) else (pre V161_c)) else 0)) 
and ((if ((pre V44_avance1) and V44_avance1) then (if B1 then (((pre V161_c) - 1) + 1) else (pre V161_c)) else 0) = (if B1 then (((pre V161_c) - 1) + 1) else (pre V161_c))) 
and ((if B1 then (((pre V161_c) - 1) + 1) else (pre V161_c)) = (((pre V160_c) - 1) + 1)) 
and ((((pre V160_c) - 1) + 1) = (pre V160_c)) 
and ((pre V160_c) = (if ((pre V43_avance0) and V43_avance0) then (if B0 then (((pre V160_c) - 1) + 1) else (pre V160_c)) else 0)) 
and ((V39_nB1 - V40_nS) = V42_diff1) 
and ((V38_nB0 - V40_nS) = V41_diff0) 
and ((((pre V161_c) - 1) + 1) <=(pre V40_nS)) 
and ((((pre V161_c) - 1) + 1) <=(pre V39_nB1)) 
and ((((pre V161_c) - 1) + 1) <=V40_nS) 
and ((((pre V161_c) - 1) + 1) <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((((pre V161_c) - 1) + 1) <=V39_nB1) 
and ((((pre V161_c) - 1) + 1) <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((((pre V161_c) - 1) + 1) <=1) 
and ((((pre V161_c) - 1) + 1) <=((pre V40_nS) + 1)) 
and ((((pre V161_c) - 1) + 1) <=((pre V39_nB1) + 1)) 
and ((((pre V161_c) - 1) + 1) <=V38_nB0) 
and ((((pre V161_c) - 1) + 1) <=9) 
and ((((pre V161_c) - 1) + 1) <=10) 
and ((((pre V161_c) - 1) + 1) <=20) 
and ((pre V38_nB0) <=(if B0 then (((pre V38_nB0) + 1) + 1) else (pre V38_nB0))) 
and (1 <=((pre V40_nS) + 1)) 
and (1 <=((pre V39_nB1) + 1)) 
and (1 <=9) 
and (1 <=10) 
and (1 <=20) 
and ((- 10) <=((pre V161_c) - 1)) 
and (((pre V161_c) - 1) <=(((pre V161_c) - 1) + 1)) 
and ((((pre V161_c) - 1) + 1) <=(pre V38_nB0)) 
and ((pre V38_nB0) <=((pre V38_nB0) + 1)) 
and (((pre V38_nB0) + 1) <=(((pre V38_nB0) + 1) + 1)) 
and ((pre V41_diff0) <=(pre V38_nB0)) 
and ((pre V38_nB0) <=((pre V38_nB0) + 1)) 
and (((pre V38_nB0) + 1) <=(((pre V38_nB0) + 1) + 1)) 
and ((pre V40_nS) <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((if S then ((pre V40_nS) + 1) else (pre V40_nS)) <=((pre V40_nS) + 1)) 
and ((pre V39_nB1) <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and (V40_nS <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((if S then ((pre V40_nS) + 1) else (pre V40_nS)) <=((pre V40_nS) + 1)) 
and ((V39_nB1 - V40_nS) <=V39_nB1) 
and (V39_nB1 <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and (1 <=((pre V38_nB0) + 1)) 
and (((pre V38_nB0) + 1) <=(((pre V38_nB0) + 1) + 1)) 
and ((V38_nB0 - V40_nS) <=V38_nB0) 
and (V38_nB0 <=(if B0 then (((pre V38_nB0) + 1) + 1) else (pre V38_nB0))) 
and ((if B0 then (((pre V38_nB0) + 1) + 1) else (pre V38_nB0)) <=(((pre V38_nB0) + 1) + 1)) 
and (9 <=10) 
and (10 <=20) 
and  true ));
tel.

