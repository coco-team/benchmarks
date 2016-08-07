node top
  (igsw: bool;
  ccd: bool;
  cconoff: bool;
  bpa: bool;
  cccanc: bool;
  battok: bool;
  gearok: bool;
  qfok: bool;
  sdok: bool;
  accok: bool;
  ccseti: bool;
  ccsetd: bool;
  ccr: bool;
  vs: int)
returns
  (OK: bool);

var
  V82_p1: bool;
  V83_p2: bool;
  V84_p3: bool;
  V85_p4: bool;
  V86_ccont: bool;
  V87_cca: bool;
  V88_env: bool;
  V389_ccall: bool;
  V390_ob: bool;
  V391_pnb: bool;
  V392_XsinceY: bool;
  V393_cca: bool;

let
  OK = (((V82_p1 and V83_p2) and V84_p3) and V85_p4);
  V82_p1 = (if (false -> (V87_cca or (not (pre V87_cca)))) then (((false -> (
  ccseti or (not (pre ccseti)))) or (false -> (ccsetd or (not (pre ccsetd))))) 
  or (false -> (ccr or (not (pre ccr))))) else true);
  V83_p2 = (if (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) 
  and qfok) and (false -> ((pre sdok) and sdok))) and (35 <= vs)) and (vs <= 
  200)) and (false -> ((pre (false -> ((pre accok) and accok))) and accok))) 
  and (not cccanc))) then (not V87_cca) else true);
  V84_p3 = (if (false -> (V86_ccont or (not (pre V86_ccont)))) then (((not (
  false -> ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))))) and 
  (not ccd)) and (false -> (cconoff or (not (pre cconoff))))) else true);
  V85_p4 = (if (false -> ((igsw or (not (pre igsw))) or ((not igsw) and (pre 
  igsw)))) then (not V87_cca) else true);
  V86_ccont = (false -> (if (((false -> ((igsw or (not (pre igsw))) or ((not 
  igsw) and (pre igsw)))) or ccd) or ((pre V86_ccont) and (false -> (cconoff or 
  (not (pre cconoff)))))) then false else (if ((pre (not V86_ccont)) and (false 
  -> (cconoff or (not (pre cconoff))))) then true else (pre V86_ccont))));
  V87_cca = (false -> (if ((if (V391_pnb and V390_ob) then (if (not ccr) then 
  true else V392_XsinceY) else false) and V389_ccall) then true else (if (not 
  V389_ccall) then false else (pre V87_cca))));
  V88_env = ((not igsw) -> true);
  V389_ccall = (((((((((V86_ccont and (not bpa)) and battok) and gearok) and 
  qfok) and (false -> ((pre sdok) and sdok))) and (35 <= vs)) and (vs <= 200)) 
  and (false -> ((pre (false -> ((pre accok) and accok))) and accok))) and (not 
  cccanc));
  V390_ob = ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and 
  ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr));
  V391_pnb = (true -> (pre (((not ccseti) and (not ccsetd)) and (not ccr))));
  V392_XsinceY = (if (false -> (V86_ccont or (not (pre V86_ccont)))) then 
  V393_cca else (true -> (V393_cca or (pre V392_XsinceY))));
  V393_cca = (pre V87_cca);
    --%PROPERTY OK=true;



-- 177 implications. 
assert (true -> ( (true -> ( -- ((not (pre V87_cca)) = (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)))) 
-- and
-- ((not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) = (not (pre V86_ccont))) 
-- and
((not (pre V86_ccont)) = (((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and ((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) = ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) 
and (((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) = V85_p4) 
and (V85_p4 = true) 
and (true = V83_p2) 
and (V83_p2 = (if ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) then (not V87_cca) else true)) 
and ((if ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) then (not V87_cca) else true) = (not V389_ccall)) 
and ((not V389_ccall) = ((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff or (not (pre cconoff)))))) 
and (((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff or (not (pre cconoff))))) = (V86_ccont or (not (pre V86_ccont)))) 
-- and ((V86_ccont or (not (pre V86_ccont))) = (if (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) then (not V87_cca) else true)) 
-- and ((if (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) then (not V87_cca) else true) = (not V87_cca)) 
and ((not V87_cca) = (V87_cca or (not (pre V87_cca)))) 
and (V82_p1 = (V82_p1 and V83_p2)) 
and ((((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) = (if (V87_cca or (not (pre V87_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and (((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr)) = V390_ob) 
and ((if ((not (pre V86_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V86_ccont)) = ((not (pre V86_ccont)) and (cconoff or (not (pre cconoff))))) 
and (((not (pre V86_ccont)) and (cconoff or (not (pre cconoff)))) = (cconoff or (not (pre cconoff)))) 
and (((V82_p1 and V83_p2) and V84_p3) = (((V82_p1 and V83_p2) and V84_p3) and V85_p4)) 
and ((((V82_p1 and V83_p2) and V84_p3) and V85_p4) = V84_p3) 
and (V84_p3 = V392_XsinceY) 
and ((V393_cca or (pre V392_XsinceY)) = (pre V392_XsinceY)) 
and (false = (if (V86_ccont or (not (pre V86_ccont))) then V393_cca else (V393_cca or (pre V392_XsinceY)))) 
and ((if (V86_ccont or (not (pre V86_ccont))) then V393_cca else (V393_cca or (pre V392_XsinceY))) = (((not ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff or (not (pre cconoff))))) 
and ((((not ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff or (not (pre cconoff)))) = ((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs))) 
and (((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) = (((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200))) 
and ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) = ((V86_ccont and (not bpa)) and battok)) 
and (((V86_ccont and (not bpa)) and battok) = (pre V86_ccont)) 
-- and ((pre V86_ccont) = (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) 
-- and ((((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) = V86_ccont) 
and (V86_ccont = (if (V86_ccont or (not (pre V86_ccont))) then (((not ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff or (not (pre cconoff)))) else true)) 
and ((if (V86_ccont or (not (pre V86_ccont))) then (((not ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff or (not (pre cconoff)))) else true) = (not ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))))) 
and ((not ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) = (if (not V389_ccall) then false else (pre V87_cca))) 
and ((if (not V389_ccall) then false else (pre V87_cca)) = V87_cca) 
and (V87_cca = (V86_ccont and (not bpa))) 
and ((V86_ccont and (not bpa)) = (((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok))) 
and ((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) = ((not ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd))) 
and (((not ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) = (pre V87_cca)) 
and ((pre V87_cca) = (if ((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff or (not (pre cconoff))))) then false else (if ((not (pre V86_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V86_ccont)))) 
and ((if ((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff or (not (pre cconoff))))) then false else (if ((not (pre V86_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V86_ccont))) = ((((V86_ccont and (not bpa)) and battok) and gearok) and qfok)) 
and (((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) = ((pre V86_ccont) and (cconoff or (not (pre cconoff))))) 
-- and (((pre V86_ccont) and (cconoff or (not (pre cconoff)))) = ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok))) 
-- and (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) = (((V86_ccont and (not bpa)) and battok) and gearok)) 
and ((((V86_ccont and (not bpa)) and battok) and gearok) = ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall)) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) = V389_ccall) 
and (V389_ccall = V393_cca) 
and (V393_cca = (if ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) then true else (if (not V389_ccall) then false else (pre V87_cca)))) 
and ((((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) => V82_p1) 
and ((not ccr) => (if (not ccr) then true else V392_XsinceY)) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (ccr or (not (pre ccr)))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => V391_pnb) 
and (((not igsw) and (pre igsw)) => (pre igsw)) 
and ((not (pre igsw)) => (igsw or (not (pre igsw)))) 
and ((ccseti and (not ccsetd)) => ccseti) 
and (((not ccseti) and ccsetd) => ccsetd) 
and (((V82_p1 and V83_p2) and V84_p3) => V82_p1) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ((not ccseti) and ccsetd)) 
and ((not (pre ccseti)) => (ccseti or (not (pre ccseti)))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (not ccsetd)) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (ccseti and (not ccsetd))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => (not ccsetd)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ccr) 
and ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) => (V391_pnb and V390_ob)) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (ccseti or (not (pre ccseti)))) 
and ((ccseti and (not ccsetd)) => (not ccsetd)) 
and (ccseti => (ccseti or (not (pre ccseti)))) 
and ((V391_pnb and V390_ob) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((V391_pnb and V390_ob) => V391_pnb) 
and ((not (pre ccsetd)) => (ccsetd or (not (pre ccsetd)))) 
and (((pre sdok) and sdok) => sdok) 
-- and (((pre (pre accok)) and (pre accok)) => (pre accok)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ((not ccseti) and (not ccsetd))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => (not ccseti)) 
and (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((not (pre ccsetd)) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((ccsetd or (not (pre ccsetd))) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (((not igsw) and (pre igsw)) => (not igsw)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (ccseti => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((ccsetd or (not (pre ccsetd))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
-- and (((pre (pre accok)) and (pre accok)) => (pre (pre accok))) 
and ((not (pre ccr)) => (ccr or (not (pre ccr)))) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (cconoff => (if ((not (pre V86_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V86_ccont))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (ccseti => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccseti))) 
and (((pre sdok) and sdok) => (pre sdok)) 
and (((not ccseti) and ccsetd) => (not ccseti)) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => ((pre (pre accok)) and (pre accok))) 
and (((not ccseti) and (not ccsetd)) => (not ccsetd)) 
and (((V82_p1 and V83_p2) and V84_p3) => (if (not ccr) then true else V392_XsinceY)) 
and (igsw => (igsw or (not (pre igsw)))) 
and (ccr => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => accok) 
and (((not ccseti) and (not ccsetd)) => (not ccseti)) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccsetd))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (ccsetd or (not (pre ccsetd)))) 
and ((ccseti or (not (pre ccseti))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and ((ccseti or (not (pre ccseti))) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (ccr => (ccr or (not (pre ccr)))) 
and (V391_pnb => V82_p1) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccsetd))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccr))) 
and ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) => (if (not ccr) then true else V392_XsinceY)) 
and ((V391_pnb and V390_ob) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (ccsetd or (not (pre ccsetd)))) 
and ((not (pre ccr)) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((ccr or (not (pre ccr))) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => ((not (pre ccseti)) and (not (pre ccsetd)))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (ccsetd or (not (pre ccsetd)))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and (ccsetd => (ccsetd or (not (pre ccsetd)))) 
and (ccsetd => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (ccsetd => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((not (pre cconoff)) => (if ((not (pre V86_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V86_ccont))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (not ccr)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => (not ccr)) 
and (((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr)) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (35 <=200) 
and  true ))));
tel.

