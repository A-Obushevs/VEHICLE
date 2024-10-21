fnom = 50;      % used in PLL block of three-phase unsymmetrical dynamic load
Mag_V0 = 1;
% I1_init=1;
% Pha_V0 = 0;
Vnom=400;       % used in block "Vab_bc(pu)" and "V_Amp" gain 


%stoptime = 140;                % Simulation time length ("Stop Time" in Simulink)
stoptime = 700-100;                  % Simulation time length ("Stop Time" in Simulink)
% stoptime = 100;       % 57           % Simulation time length ("Stop Time" in Simulink)

timestep_meas_data = 1;         % Timestep of measurement data, e.g. HP measurement resolution is 10 seconds
acceleration = 1;              % Definition of the acceleration of the time series data
% acceleration = 25;              % Definition of the acceleration of the time series data
t_factor = 1/acceleration;      % Scaling factor of timesteps (in order to speed up simulation) (e.g. 0.01 is 100x faster)

% datastart = 1;                % Position of the load profile vector at which the simulation starts and stop
% datastart = 1;                % Position of the load profile vector at which the simulation starts and stop
% datastop = 1447; % (e.g. HP_LP_January_pars.ActivePowerL1(395:700)) => datastart = 395, datastop = 700

datastart = 100;   %   Dumpload & V2G Charging & Q(V) tuned ramp behavior 5800
datastop = 700;    %   Dumpload & V2G Charging & Q(V) tuned ramp behavior