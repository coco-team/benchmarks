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
  OK = (if (false -> (V83_cca or (not (pre V83_cca)))) then (((false -> (ccseti 
  or (not (pre ccseti)))) or (false -> (ccsetd or (not (pre ccsetd))))) or (
  false -> (ccr or (not (pre ccr))))) else true);
  V82_ccont = (false -> (if (((false -> ((igsw or (not (pre igsw))) or ((not 
  igsw) and (pre igsw)))) or ccd) or ((pre V82_ccont) and (false -> (cconoff or 
  (not (pre cconoff)))))) then false else (if ((pre (not V82_ccont)) and (false 
  -> (cconoff or (not (pre cconoff))))) then true else (pre V82_ccont))));
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
  V296_XsinceY = (if (false -> (V82_ccont or (not (pre V82_ccont)))) then 
  V297_cca else (true -> (V297_cca or (pre V296_XsinceY))));
  V297_cca = (pre V83_cca);
  --%PROPERTY  OK=true;



-- 148 implications. 
assert (true -> ( (true -> (((not (pre V82_ccont)) = true) 
and (true = (not V293_ccall)) 
and ((not V293_ccall) = (V83_cca or (not (pre V83_cca)))) 
and ((V83_cca or (not (pre V83_cca))) = (not (pre V83_cca))) 
and ((not (pre V83_cca)) = (V82_ccont or (not (pre V82_ccont)))) 
and ((V82_ccont or (not (pre V82_ccont))) = ((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff)))))) 
and (((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff))))) = ((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw)))) 
and (((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) = (((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and ((if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true) = (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((cconoff or (not (pre cconoff))) = (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and ((if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont)) = ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff))))) 
and (((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr)) = V294_ob) 
and ((pre V296_XsinceY) = (V297_cca or (pre V296_XsinceY))) 
and (false = V82_ccont) 
and (V82_ccont = (pre V83_cca)) 
and ((pre V83_cca) = (((V82_ccont and (not bpa)) and battok) and gearok)) 
and ((((V82_ccont and (not bpa)) and battok) and gearok) = ((((V82_ccont and (not bpa)) and battok) and gearok) and qfok)) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) = V83_cca) 
and (V83_cca = ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs))) 
-- and (((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) = ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok))) 
-- and (((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) = (if (V82_ccont or (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY)))) 
and ((if (V82_ccont or (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY))) = ((V82_ccont and (not bpa)) and battok)) 
and (((V82_ccont and (not bpa)) and battok) = (if ((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff))))) then false else (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont)))) 
and ((if ((((igsw or (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff))))) then false else (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) = ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) = ((pre V82_ccont) and (cconoff or (not (pre cconoff))))) 
and (((pre V82_ccont) and (cconoff or (not (pre cconoff)))) = (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok))) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) = (V82_ccont and (not bpa))) 
and ((V82_ccont and (not bpa)) = (((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200))) 
and ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) = V297_cca) 
-- and (V297_cca = (((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) 
-- and ((((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) = (pre V82_ccont)) 
and ((pre V82_ccont) = (if (not V293_ccall) then false else (pre V83_cca))) 
and ((if (not V293_ccall) then false else (pre V83_cca)) = V293_ccall) 
and (V293_ccall = (if ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) then true else (if (not V293_ccall) then false else (pre V83_cca)))) 
and ((not ccr) => (if (not ccr) then true else V296_XsinceY)) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => V295_pnb) 
and (((not igsw) and (pre igsw)) => (pre igsw)) 
and (V296_XsinceY => (if (not ccr) then true else V296_XsinceY)) 
and ((not (pre ccsetd)) => (ccsetd or (not (pre ccsetd)))) 
and (ccr => (ccr or (not (pre ccr)))) 
and (((not ccseti) and ccsetd) => (ccsetd or (not (pre ccsetd)))) 
and (((not ccseti) and ccsetd) => ccsetd) 
and ((ccseti and (not ccsetd)) => ccseti) 
and ((V295_pnb and V294_ob) => V295_pnb) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (not ccseti)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (not ccr)) 
and (((pre sdok) and sdok) => (pre sdok)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => (not ccr)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ((not ccseti) and (not ccsetd))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => (if (not ccr) then true else V296_XsinceY)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((pre sdok) and sdok) => sdok) 
and (((not igsw) and (pre igsw)) => (not igsw)) 
-- and (((pre (pre accok)) and (pre accok)) => (pre (pre accok))) 
and (ccsetd => (ccsetd or (not (pre ccsetd)))) 
and (ccsetd => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and (((not ccseti) and ccsetd) => (not ccseti)) 
and ((V295_pnb and V294_ob) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (ccr or (not (pre ccr)))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((V295_pnb and V294_ob) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (cconoff => (cconoff or (not (pre cconoff)))) 
-- and (((pre (pre accok)) and (pre accok)) => (pre accok)) 
and (ccsetd => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => (V295_pnb and V294_ob)) 
and (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((ccsetd or (not (pre ccsetd))) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and (((not ccseti) and ccsetd) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((ccseti or (not (pre ccseti))) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((not (pre ccseti)) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (not ccsetd)) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => accok) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((not (pre ccr)) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((not (pre ccr)) => (ccr or (not (pre ccr)))) 
and ((ccsetd or (not (pre ccsetd))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (ccseti => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((ccseti and (not ccsetd)) => (not ccsetd)) 
and (ccseti => (ccseti or (not (pre ccseti)))) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (ccseti or (not (pre ccseti)))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccseti))) 
and ((ccr or (not (pre ccr))) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((not (pre ccseti)) => (ccseti or (not (pre ccseti)))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (ccsetd or (not (pre ccsetd)))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccsetd))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and (((not ccseti) and (not ccsetd)) => (not ccsetd)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccr))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (ccseti or (not (pre ccseti)))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ccr) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (ccseti and (not ccsetd))) 
and (((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr)) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ((not ccseti) and ccsetd)) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccsetd))) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => ((pre (pre accok)) and (pre accok))) 
and (((not ccseti) and (not ccsetd)) => (not ccseti)) 
and ((not (pre ccseti)) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and ((ccseti or (not (pre ccseti))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and ((not (pre cconoff)) => (cconoff or (not (pre cconoff)))) 
and (35 <=200) 
and  true ))));
tel.

