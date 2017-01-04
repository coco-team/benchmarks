disp (' --- Compile TCM  --- ')
disp('....  loading constants')
clear all
bdclose all
tcm_constants;
open('tcm');
disp('... compiling')
try
    rtwbuild('tcm')
catch ME
    disp(ME.message)
end
disp('... end');