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
  V82_ccont: bool;
  V83_cca: bool;
  V84_env: bool;
  V293_ccall: bool;
  V294_ob: bool;
  V295_pnb: bool;
  V296_XsinceY: bool;
  V297_cca: bool;

let
  OK = (if (false -> (V83_cca and (not (pre V83_cca)))) then (((false -> (
  ccseti and (not (pre ccseti)))) or (false -> (ccsetd and (not (pre ccsetd))))
  ) or (false -> (ccr and (not (pre ccr))))) else true);
  V82_ccont = (false -> (if (((false -> ((igsw and (not (pre igsw))) or ((not 
  igsw) and (pre igsw)))) or ccd) or ((pre V82_ccont) and (false -> (cconoff 
  and (not (pre cconoff)))))) then false else (if ((pre (not V82_ccont)) and (
  false -> (cconoff and (not (pre cconoff))))) then true else (pre V82_ccont)))
  );
  V83_cca = (false -> (if ((if (V295_pnb and V294_ob) then (if (not ccr) then 
  true else V296_XsinceY) else false) and V293_ccall) then true else (if (not 
  V293_ccall) then false else (pre V83_cca))));
  V84_env = ((not igsw) -> true);
  V293_ccall = (((((((((V82_ccont and (not bpa)) and battok) and gearok) and 
  qfok) and (false -> ((pre sdok) and sdok))) and (35 <= vs)) and (vs <= 200)) 
  and (false -> ((pre (false -> ((pre accok) and accok))) and accok))) and (not 
  cccanc));
  V294_ob = ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and 
  ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr));
  V295_pnb = (true -> (pre (((not ccseti) and (not ccsetd)) and (not ccr))));
  V296_XsinceY = (if (false -> (V82_ccont and (not (pre V82_ccont)))) then 
  V297_cca else (true -> (V297_cca or (pre V296_XsinceY))));
  V297_cca = (pre V83_cca);
    --%PROPERTY OK=true;



-- 162 implications. 
assert (true -> ( (true -> ((true = (if (V83_cca and (not (pre V83_cca))) then (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr)))) else true)) 
and (V294_ob = ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (V83_cca = (if ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) then true else (if (not V293_ccall) then false else (pre V83_cca)))) 
and ((pre V83_cca) = V297_cca) 
and (V82_ccont => (if ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff and (not (pre cconoff))))) then false else (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont)))) 
-- and (V293_ccall => (((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) 
and ((if (V82_ccont and (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY))) => V296_XsinceY) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => V295_pnb) 
and ((V83_cca and (not (pre V83_cca))) => ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall)) 
and (((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) => (not (pre V83_cca))) 
and (((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) => (cconoff and (not (pre cconoff)))) 
and ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff and (not (pre cconoff)))))) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (not cccanc)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (35 <= vs)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (not bpa)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (pre V83_cca)) 
and ((pre V296_XsinceY) => (V297_cca or (pre V296_XsinceY))) 
and ((V83_cca and (not (pre V83_cca))) => (if (not ccr) then true else V296_XsinceY)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (if (not ccr) then true else V296_XsinceY)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (not (pre ccseti))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (not (pre ccr))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => V83_cca) 
and (((pre V82_ccont) and (cconoff and (not (pre cconoff)))) => (not (pre cconoff))) 
and (((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) => (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok))) 
-- and (((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) => (((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200))) 
-- and ((((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) => ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok))) 
and ((V82_ccont and (not (pre V82_ccont))) => V82_ccont) 
and ((pre V83_cca) => (if (not ccr) then true else V296_XsinceY)) 
and ((pre V83_cca) => (pre V82_ccont)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => V83_cca) 
-- and (((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) => (((pre (pre accok)) and (pre accok)) and accok)) 
and ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs))) 
and ((cconoff and (not (pre cconoff))) => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and ((cconoff and (not (pre cconoff))) => cconoff) 
and ((((V82_ccont and (not bpa)) and battok) and gearok) => ((V82_ccont and (not bpa)) and battok)) 
and ((ccsetd and (not (pre ccsetd))) => ccsetd) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => (V295_pnb and V294_ob)) 
and ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => (vs <= 200)) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => ((pre sdok) and sdok)) 
and ((ccsetd and (not (pre ccsetd))) => (not (pre ccsetd))) 
and ((ccsetd and (not (pre ccsetd))) => ((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd))))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (ccseti and (not ccsetd))) 
and (((pre V82_ccont) and (cconoff and (not (pre cconoff)))) => (not V293_ccall)) 
and ((V83_cca and (not (pre V83_cca))) => (not (pre V83_cca))) 
and (V83_cca => (vs <= 200)) 
and ((pre V83_cca) => (if (V82_ccont and (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY)))) 
and (V83_cca => (if (not ccr) then true else V296_XsinceY)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr)))) 
and (((pre V82_ccont) and (cconoff and (not (pre cconoff)))) => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff and (not (pre cconoff)))))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and ((V83_cca and (not (pre V83_cca))) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and (((not ccseti) and ccsetd) => ccsetd) 
and (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and ((ccseti and (not ccsetd)) => ccseti) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => (not bpa)) 
and (((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) => (35 <= vs)) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((pre sdok) and sdok) => (pre sdok)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => (not ccr)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ((not ccseti) and (not ccsetd))) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => (if (not ccr) then true else V296_XsinceY)) 
and ((V295_pnb and V294_ob) => V295_pnb) 
and (V83_cca => (35 <= vs)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => V294_ob) 
and ((ccseti and (not (pre ccseti))) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and (V83_cca => (not cccanc)) 
and (((pre V82_ccont) and (cconoff and (not (pre cconoff)))) => (cconoff and (not (pre cconoff)))) 
and ((pre V83_cca) => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (V83_cca => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false)) 
and (((pre sdok) and sdok) => sdok) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (if (not ccr) then true else V296_XsinceY)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (not ccseti)) 
and ((V82_ccont and (not (pre V82_ccont))) => ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff))))) 
and ((if ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff and (not (pre cconoff))))) then false else (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => (not bpa)) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccseti))) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => (((V82_ccont and (not bpa)) and battok) and gearok)) 
-- and (((pre (pre accok)) and (pre accok)) => (pre (pre accok))) 
and ((((V82_ccont and (not bpa)) and battok) and gearok) => gearok) 
and (((V82_ccont and (not bpa)) and battok) => (V82_ccont and (not bpa))) 
and (bpa => (not V293_ccall)) 
and ((not (pre V82_ccont)) => (not (pre V83_cca))) 
and (cccanc => (not V293_ccall)) 
and (((not ccseti) and ccsetd) => (not ccseti)) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => ((((V82_ccont and (not bpa)) and battok) and gearok) and qfok)) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => ((pre (pre accok)) and (pre accok))) 
and ((V82_ccont and (not bpa)) => V82_ccont) 
and (((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff and (not (pre cconoff))))) => (not V293_ccall)) 
and (((ccseti and (not ccsetd)) and (not ccr)) => V294_ob) 
and ((ccseti and (not ccsetd)) => (not ccsetd)) 
and (((not igsw) and (pre igsw)) => (not V293_ccall)) 
and (ccd => (not V293_ccall)) 
and ((pre V82_ccont) => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and ((igsw and (not (pre igsw))) => (not V293_ccall)) 
and ((igsw and (not (pre igsw))) => (not (pre igsw))) 
-- and (V83_cca => ((pre (pre accok)) and (pre accok))) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => V82_ccont) 
and (V83_cca => V82_ccont) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccsetd))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccr))) 
and ((V295_pnb and V294_ob) => V294_ob) 
and ((not ccr) => (if (not ccr) then true else V296_XsinceY)) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => accok) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => battok) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => gearok) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ((not ccseti) and ccsetd)) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => battok) 
and (((V82_ccont and (not bpa)) and battok) => (not bpa)) 
and (((V82_ccont and (not bpa)) and battok) => battok) 
and ((V82_ccont and (not bpa)) => (not bpa)) 
and (((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) => (not (pre V82_ccont))) 
and ((cconoff and (not (pre cconoff))) => (not (pre cconoff))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => (not ccseti)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ccr) 
and (((not ccseti) and (not ccsetd)) => (not ccseti)) 
and (V83_cca => battok) 
and (V83_cca => accok) 
and (V83_cca => gearok) 
and ((pre V83_cca) => (V297_cca or (pre V296_XsinceY))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (not (pre ccsetd))) 
and ((ccseti and (not (pre ccseti))) => ((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd))))) 
and ((ccr and (not (pre ccr))) => (((ccseti and (not (pre ccseti))) or (ccsetd and (not (pre ccsetd)))) or (ccr and (not (pre ccr))))) 
and ((ccr and (not (pre ccr))) => ccr) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => V294_ob) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => qfok) 
-- and ((((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) => (not cccanc)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => V294_ob) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => qfok) 
and (((V82_ccont and (not bpa)) and battok) => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and ((V82_ccont and (not bpa)) => (if ((not (pre V82_ccont)) and (cconoff and (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((not igsw) and (pre igsw)) => (pre igsw)) 
and (((not igsw) and (pre igsw)) => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and (V83_cca => qfok) 
and (V83_cca => (not bpa)) 
-- and (V83_cca => (((pre (pre accok)) and (pre accok)) and accok)) 
and ((igsw and (not (pre igsw))) => igsw) 
and ((igsw and (not (pre igsw))) => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => (pre accok)) 
-- and (((pre (pre accok)) and (pre accok)) => (pre accok)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => qfok) 
and ((pre V83_cca) => (pre accok)) 
and (V83_cca => (pre accok)) 
and ((V83_cca and (not (pre V83_cca))) => V294_ob) 
and ((ccseti and (not (pre ccseti))) => ccseti) 
and ((ccr and (not (pre ccr))) => (not (pre ccr))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => V294_ob) 
and (((not ccseti) and (not ccsetd)) => (not ccsetd)) 
and (ccd => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => ((not (pre ccseti)) and (not (pre ccsetd)))) 
and (V83_cca => V293_ccall) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and ((if (V82_ccont and (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY))) => (V297_cca or (pre V296_XsinceY))) 
and (V296_XsinceY => (if (not ccr) then true else V296_XsinceY)) 
and (35 <=200) 
and  true ))));
tel.

