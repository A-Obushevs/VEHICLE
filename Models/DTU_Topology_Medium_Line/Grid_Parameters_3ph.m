fnom = 50;      % used in PLL block of three-phase unsymmetrical dynamic load
Mag_V0 = 1;
% I1_init=1;
% Pha_V0 = 0;
Vnom=400;       % used in block "Vab_bc(pu)" and "V_Amp" gain 


% Simulation time length ("Stop Time" in Simulink)
% stoptime = 5005-4440;     % Case a             
% stoptime = 5500-5005;     % Case b
stoptime = 6300-5800;     % Case c

timestep_meas_data = 1;         % Timestep of measurement data, e.g. HP measurement resolution is 10 seconds
acceleration = 1;              % Definition of the acceleration of the time series data
% acceleration = 25;              % Definition of the acceleration of the time series data
t_factor = 1/acceleration;      % Scaling factor of timesteps (in order to speed up simulation) (e.g. 0.01 is 100x faster)

% Case a)
% datastart = 4440;   %   Dumpload & V2G Charging & Q(V) high ramp behavior
% datastop = 5005;    %   Dumpload & V2G Charging & Q(V) high ramp behavior

% Case b)
% datastart = 5005;   %   Dumpload & V2G Charging
% datastop = 5500;    %   Dumpload & V2G Charging

% Case c)
datastart = 6100;   %   Dumpload & V2G Charging & Q(V) tuned ramp behavior 5800
datastop = 6300;    %   Dumpload & V2G Charging & Q(V) tuned ramp behavior