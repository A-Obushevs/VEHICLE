fnom = 50;      % used in PLL block of three-phase unsymmetrical dynamic load
Mag_V0 = 1;
% I1_init=1;
% Pha_V0 = 0;
Vnom = 400;       % used in block "Vab_bc(pu)" and "V_Amp" gain 

DTUsignconv = -1000;

% Simulation time length ("Stop Time" in Simulink)

% stoptime = 2001-900;     % data_case_1
% stoptime = 5001-3200;     % data_case_2
stoptime = 7001-5000;     % data_case_3

Time = cumsum([0;ones(stoptime,1)]);

timestep_meas_data = 1;         % Timestep of measurement data, e.g. HP measurement resolution is 10 seconds

% data_case_1 => NO Voltvar Control, NO Dumpload, YES EVSE 
% datastart = 900;   
% datastop = 2001;    

% data_case_2 => NO Voltvar Control, YES Dumpload, YES EVSE, YES Flexhouse 715-2
% datastart = 3200;  
% datastop = 5001;    

% data_case_3 => YES Voltvar Control, YES Dumpload, YES EVSE, YES Flexhouse 715-2
datastart = 5000;     
datastop = 7001;      
