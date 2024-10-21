fnom = 50;      % used in PLL block of three-phase unsymmetrical dynamic load
Mag_V0 = 1;
% I1_init=1;
% Pha_V0 = 0;
Vnom = 400;       % used in block "Vab_bc(pu)" and "V_Amp" gain 

DTUsignconv = -1000;

% Simulation time length ("Stop Time" in Simulink)
% stoptime = 2001-900;     % data_case_1
% stoptime = 5001-3200;     % data_case_2
% stoptime = 7001-5000;     % data_case_3
% RURAL cases:
% stoptime = 4185-2990;     % Rural case 1
% stoptime = 8075-2690;     % Rural case 1

% RURAL 10:00-16:00 case
stoptime = 21556-1;

Time = cumsum([0;ones(stoptime,1)]);

timestep_meas_data = 1;         % Timestep of measurement data, e.g. HP measurement resolution is 10 seconds

% data_case_1 => NO Voltvar Control, NO Dumpload, YES EVSE 
% RURAL case 1 =>  
% datastart = 2990;   
% datastop = 4185;

% RURAL 10:45-12:15 case
% datastart = 2690;   
% datastop = 8075;

% RURAL 10:00-16:00 case
datastart = 1;   
datastop = 21556;