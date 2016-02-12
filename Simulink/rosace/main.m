%clear all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file is part of MATLAB Sim2PreludeLustre.
% Copyright (C) 2014-2015  ONERA
%
%    MATLAB Sim2PreludeLustre is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    MATLAB Sim2PreludeLustre is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%Pour claire
%addpath /home/pagetti/forces/toolchain/gac
addpath ../../gac
%Data loading
home;
%simu_data;
simu_data_const;
simu_data_dyn;

Engine.Ts=dt;
Elevator.Ts=dt;
FlightDynamics.Ts=dt;
hfiltre.Ts=Ts_f_h;
Vafiltre.Ts=Ts_f_Va;
Vzfiltre.Ts=Ts_f_Vz;
azfiltre.Ts=Ts_f_az;
qfiltre.Ts=Ts_f_q;
AltitudeHold.Ts=Ts_h;
VaControl.Ts=Ts_K1 ;
VzControl.Ts=Ts_K2 ;

%save('data_avion_discret','Engine','Elevator','FlightDynamics');
save allrates dt Ts_f_h Ts_f_Va Ts_f_az Ts_f_q Ts_h Ts_K1 Ts_K2 Ts_h dt_de dt_dx Ts_f_Vz ;

simulink_model='ROSACE_VA_control';

%Conditions initiales pour ouverture de la boucle
initial_conditions=3;
time_unit=10000;
default_rate=1e-3;
theclock=default_rate/100;

%generation codes Lustre et prelude
%cocoSim('blocs_rosace',simulink_model,initial_conditions,'allrates',default_rate,theclock);
