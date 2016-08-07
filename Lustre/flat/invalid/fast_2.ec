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
  V82_p1 = (if (false -> (V87_cca and (not (pre V87_cca)))) then (((false -> (
  ccseti and (not (pre ccseti)))) or (false -> (ccsetd and (not (pre ccsetd))))
  ) or (false -> (ccr and (not (pre ccr))))) else true);
  V83_p2 = (if (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) 
  and qfok) and (false -> ((pre sdok) and sdok))) and (35 <= vs)) and (vs <= 
  200)) and (false -> ((pre (false -> ((pre accok) and accok))) and accok))) 
  and (not cccanc))) then (not V87_cca) else true);
  V84_p3 = (if (false -> (V86_ccont and (not (pre V86_ccont)))) then (((not (
  false -> ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))))) and 
  (not ccd)) and (false -> (cconoff and (not (pre cconoff))))) else true);
  V85_p4 = (if (false -> ((igsw and (not (pre igsw))) or ((not igsw) and (pre 
  igsw)))) then (not V87_cca) else true);
  V86_ccont = (false -> (if (((false -> ((igsw and (not (pre igsw))) or ((not 
  igsw) and (pre igsw)))) or ccd) or ((pre V86_ccont) and (false -> (cconoff 
  and (not (pre cconoff)))))) then false else (if ((pre (not V86_ccont)) and (
  false -> (cconoff and (not (pre cconoff))))) then true else (pre V86_ccont)))
  );
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
  V392_XsinceY = (if (false -> (V86_ccont and (not (pre V86_ccont)))) then 
  V393_cca else (true -> (V393_cca or (pre V392_XsinceY))));
  V393_cca = (pre V87_cca);
    --%PROPERTY OK=true;



-- 199 implications. 
assert (true -> ( (true -> ((V82_p1 = (if ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) then (not V87_cca) else true)) 
and ((if ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) then (not V87_cca) else true) = V85_p4) 
and (V85_p4 = true) 
and (true = V83_p2) 
and (V83_p2 = (if (V87_cca and (not (pre V87_cca))) then (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr)))) else true)) 
and ((if (V87_cca and (not (pre V87_cca))) then (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr)))) else true) = ((V82_p1 and V83_p2) and V84_p3)) 
and (((V82_p1 and V83_p2) and V84_p3) = (((V82_p1 and V83_p2) and V84_p3) and V85_p4)) 
-- and ((((V82_p1 and V83_p2) and V84_p3) and V85_p4) = (if (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) then (not V87_cca) else true)) 
-- and ((if (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) then (not V87_cca) else true) = V84_p3) 
and (V84_p3 = (if (V86_ccont and (not (pre V86_ccont))) then (((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff and (not (pre cconoff)))) else true)) 
and ((if (V86_ccont and (not (pre V86_ccont))) then (((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff and (not (pre cconoff)))) else true) = (V82_p1 and V83_p2)) 
and (V390_ob = ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (V87_cca = (if ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) then true else (if (not V389_ccall) then false else (pre V87_cca)))) 
and ((pre V87_cca) = V393_cca) 
-- and ((not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) => (not V389_ccall)) 
-- and (V389_ccall => (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) 
and (V86_ccont => (if ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff and (not (pre cconoff))))) then false else (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont)))) 
and ((if (V86_ccont and (not (pre V86_ccont))) then V393_cca else (V393_cca or (pre V392_XsinceY))) => V392_XsinceY) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => V391_pnb) 
and ((V87_cca and (not (pre V87_cca))) => ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall)) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) => (not (pre ccsetd))) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) => V390_ob) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) => (not (pre ccr))) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) => V87_cca) 
and (((pre V86_ccont) and (cconoff and (not (pre cconoff)))) => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff and (not (pre cconoff)))))) 
and (((pre V86_ccont) and (cconoff and (not (pre cconoff)))) => (pre V86_ccont)) 
and ((pre V392_XsinceY) => (V393_cca or (pre V392_XsinceY))) 
and (((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) => (cconoff and (not (pre cconoff)))) 
and ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff and (not (pre cconoff)))))) 
and ((V86_ccont and (not (pre V86_ccont))) => (((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff and (not (pre cconoff))))) 
and ((if (not V389_ccall) then false else (pre V87_cca)) => (vs <= 200)) 
and ((if (not V389_ccall) then false else (pre V87_cca)) => (not bpa)) 
and ((if (not V389_ccall) then false else (pre V87_cca)) => ((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd))) 
and ((if (not V389_ccall) then false else (pre V87_cca)) => (pre V87_cca)) 
and ((if (not V389_ccall) then false else (pre V87_cca)) => (pre V86_ccont)) 
-- and (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) => (((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200))) 
and (((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) => (((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok))) 
and ((if (not V389_ccall) then false else (pre V87_cca)) => V86_ccont) 
and (((pre V86_ccont) and (cconoff and (not (pre cconoff)))) => (cconoff and (not (pre cconoff)))) 
and ((if (not V389_ccall) then false else (pre V87_cca)) => V87_cca) 
and (((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) => (((V86_ccont and (not bpa)) and battok) and gearok)) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and ((V87_cca and (not (pre V87_cca))) => (not (pre V87_cca))) 
-- and (V87_cca => (pre (pre accok))) 
and (V87_cca => (vs <= 200)) 
and (V87_cca => ((pre sdok) and sdok)) 
-- and (V87_cca => (((pre (pre accok)) and (pre accok)) and accok)) 
and (V87_cca => (not cccanc)) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) => ((not (pre ccseti)) and (not (pre ccsetd)))) 
and ((if (not V389_ccall) then false else (pre V87_cca)) => (V393_cca or (pre V392_XsinceY))) 
and ((pre V87_cca) => (if (V86_ccont and (not (pre V86_ccont))) then V393_cca else (V393_cca or (pre V392_XsinceY)))) 
and (V87_cca => (if (not ccr) then true else V392_XsinceY)) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) => (if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false)) 
-- and ((((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) => ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok))) 
and ((ccseti and (not ccsetd)) => ccseti) 
and (((not ccseti) and ccsetd) => ccsetd) 
and ((((V86_ccont and (not bpa)) and battok) and gearok) => ((V86_ccont and (not bpa)) and battok)) 
and ((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => ((((V86_ccont and (not bpa)) and battok) and gearok) and qfok)) 
and (((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) => (not (pre V86_ccont))) 
and (((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) => (not (pre V87_cca))) 
and ((cconoff and (not (pre cconoff))) => cconoff) 
and (((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) => (35 <= vs)) 
and (((V86_ccont and (not bpa)) and battok) => (V86_ccont and (not bpa))) 
and (((V86_ccont and (not bpa)) and battok) => (not ccd)) 
and (((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) => qfok) 
and ((V86_ccont and (not bpa)) => V86_ccont) 
and (((pre sdok) and sdok) => sdok) 
and ((not (pre V86_ccont)) => (not (pre V87_cca))) 
and ((cconoff and (not (pre cconoff))) => (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) 
and ((V86_ccont and (not (pre V86_ccont))) => (not (pre V87_cca))) 
and ((V86_ccont and (not (pre V86_ccont))) => V86_ccont) 
and ((((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff and (not (pre cconoff)))) => (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) 
and ((((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff and (not (pre cconoff)))) => ((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd))) 
and (V87_cca => (not bpa)) 
and (V87_cca => (not ccd)) 
and (V87_cca => gearok) 
and (V87_cca => battok) 
and (V87_cca => V389_ccall) 
and ((((not ccseti) and ccsetd) and (not ccr)) => V390_ob) 
and (((pre V86_ccont) and (cconoff and (not (pre cconoff)))) => (not V87_cca)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (not ccseti)) 
and ((pre V87_cca) => (pre V86_ccont)) 
and (V87_cca => (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) 
and ((if (V86_ccont and (not (pre V86_ccont))) then V393_cca else (V393_cca or (pre V392_XsinceY))) => (V393_cca or (pre V392_XsinceY))) 
and (V392_XsinceY => (if (not ccr) then true else V392_XsinceY)) 
and ((V86_ccont and (not bpa)) => (not bpa)) 
and ((if ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff and (not (pre cconoff))))) then false else (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) => ((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd))) 
and ((if ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff and (not (pre cconoff))))) then false else (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) => (not ccd)) 
and (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and (((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) => (not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (if (not ccr) then true else V392_XsinceY)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (not ccr)) 
and (V87_cca => (35 <= vs)) 
and (((pre sdok) and sdok) => (pre sdok)) 
and ((igsw and (not (pre igsw))) => (not V87_cca)) 
-- and ((igsw and (not (pre igsw))) => (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)))) 
and ((igsw and (not (pre igsw))) => (not (pre igsw))) 
and ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => ((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs))) 
and (((not igsw) and (pre igsw)) => (not V87_cca)) 
and (((not igsw) and (pre igsw)) => (not igsw)) 
and ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) => (V391_pnb and V390_ob)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => (if (not ccr) then true else V392_XsinceY)) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (ccseti and (not ccsetd))) 
and ((V391_pnb and V390_ob) => V391_pnb) 
and ((cconoff and (not (pre cconoff))) => (not (pre cconoff))) 
and ((ccsetd and (not (pre ccsetd))) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and ((ccsetd and (not (pre ccsetd))) => ccsetd) 
-- and (((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff and (not (pre cconoff))))) => (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)))) 
and ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => (not ccd)) 
and ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => (35 <= vs)) 
and ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => (not bpa)) 
and ((V86_ccont and (not (pre V86_ccont))) => (not (pre V86_ccont))) 
and ((((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff and (not (pre cconoff)))) => (not (pre cconoff))) 
and ((ccr and (not (pre ccr))) => (not (pre ccr))) 
and ((ccseti and (not (pre ccseti))) => ccseti) 
-- and (((pre (pre accok)) and (pre accok)) => (pre accok)) 
and (((not ccseti) and (not ccsetd)) => (not ccseti)) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => ((pre (pre accok)) and (pre accok))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => (not ccseti)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ccr) 
and ((ccseti and (not (pre ccseti))) => ((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd))))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccr))) 
and ((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) => (if (not ccr) then true else V392_XsinceY)) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccsetd))) 
and (ccd => (not V87_cca)) 
-- and (ccd => (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)))) 
and (ccd => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ((not ccseti) and ccsetd)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ccsetd) 
and (bpa => (not V87_cca)) 
-- and (bpa => (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)))) 
and ((igsw and (not (pre igsw))) => ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => accok) 
and (((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) => (not ccd)) 
-- and (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) => accok) 
-- and ((((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) => (not cccanc)) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (not ccsetd)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => V390_ob) 
and ((ccseti and (not ccsetd)) => (not ccsetd)) 
and ((ccseti and (not (pre ccseti))) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and ((ccseti and (not (pre ccseti))) => (not (pre ccseti))) 
and (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and ((ccsetd and (not (pre ccsetd))) => (not (pre ccsetd))) 
and ((not ccr) => (if (not ccr) then true else V392_XsinceY)) 
and ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) 
and ((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => (vs <= 200)) 
and ((V86_ccont and (not (pre V86_ccont))) => ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff))))) 
and ((((not ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) and (not ccd)) and (cconoff and (not (pre cconoff)))) => (cconoff and (not (pre cconoff)))) 
and ((if ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V86_ccont) and (cconoff and (not (pre cconoff))))) then false else (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) => (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccseti))) 
and ((V391_pnb and V390_ob) => V390_ob) 
and (cccanc => (not V87_cca)) 
-- and (cccanc => (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)))) 
and (((V86_ccont and (not bpa)) and battok) => battok) 
and ((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => (not ccd)) 
and ((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => ((pre sdok) and sdok)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ((not ccseti) and (not ccsetd))) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => (not ccr)) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccsetd))) 
and (((not ccseti) and (not ccsetd)) => (not ccsetd)) 
-- and (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) => (pre (pre accok))) 
and ((((V86_ccont and (not bpa)) and battok) and gearok) => gearok) 
and ((V86_ccont and (not bpa)) => (not ccd)) 
-- and (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) => (((pre (pre accok)) and (pre accok)) and accok)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => (not ccsetd)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => V390_ob) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and (((if (V391_pnb and V390_ob) then (if (not ccr) then true else V392_XsinceY) else false) and V389_ccall) => (not (pre ccseti))) 
and ((ccsetd and (not (pre ccsetd))) => ((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd))))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => ((not (pre ccseti)) and (not (pre ccsetd)))) 
and (((not igsw) and (pre igsw)) => ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) 
-- and (((not igsw) and (pre igsw)) => (not (((((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)))) 
and ((ccr and (not (pre ccr))) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and ((igsw and (not (pre igsw))) => igsw) 
and ((not V389_ccall) => (not V87_cca)) 
and (V87_cca => ((((((V86_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs))) 
and (V87_cca => V86_ccont) 
and ((pre V86_ccont) => (if ((not (pre V86_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V86_ccont))) 
and (((not ccseti) and ccsetd) => (not ccseti)) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccseti))) 
and (((not igsw) and (pre igsw)) => (pre igsw)) 
and ((ccr and (not (pre ccr))) => ccr) 
-- and (((pre (pre accok)) and (pre accok)) => (pre (pre accok))) 
and (35 <=200) 
and  true ))));
tel.

