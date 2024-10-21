%% DTU Line parameters for Simulink model
% "For a short line section (approx. < 50 km) [...]
% The RLC line section parameters are computed as follows:
fnom = 50;
line_param = struct();
% -------------------------------------------------------------------------
% Cable A1 lumped parameters
line_param.A1 = struct();
line_param.A1.crosssection = 95;  % mm2
line_param.A1.length = 0.025;  % km
line_param.A1.Z = 0.00825852; % Ohm
line_param.A1.phi = 13.99*pi/180; % rad
line_param.A1.R_1 = line_param.A1.Z * cos(line_param.A1.phi); % Ohm
line_param.A1.X_1 = line_param.A1.Z * sin(line_param.A1.phi); % Ohm
line_param.A1.R_0 = 0.032075; % Ohm
line_param.A1.X_0 = 0.0078; % Ohm
line_param.A1.B_1 = 4.475e-6; % S
line_param.A1.C_1 = line_param.A1.B_1 / (2*pi*fnom); % F 
line_param.A1.C_0 = 1e-9; % F
line_param.A1.L_1 = line_param.A1.X_1 / (2*pi*fnom); % H
line_param.A1.L_0 = line_param.A1.X_0 / (2*pi*fnom); % H

% RLC line section parameters calculation
% Lumped series and mutual parameters
line_param.A1.Rs = (2*line_param.A1.R_1 + line_param.A1.R_0)/3; % Ohm
line_param.A1.Ls = (2*line_param.A1.L_1 + line_param.A1.L_0)/3; % H
line_param.A1.Rm = (line_param.A1.R_0-line_param.A1.R_1)/3; % Ohm
line_param.A1.Lm = (line_param.A1.L_0-line_param.A1.L_1)/3; % H
line_param.A1.Cp = line_param.A1.C_1; % F
line_param.A1.Cg = 3*line_param.A1.C_1*line_param.A1.C_0 / ...
                            (line_param.A1.C_1-line_param.A1.C_0); % F
                        
% -------------------------------------------------------------------------
% Cable A2 lumped parameters
line_param.A2 = line_param.A1;

% -------------------------------------------------------------------------
% Cable B1 lumped parameters
line_param.B1 = struct();
line_param.B1.crosssection = 95;  % mm2
line_param.B1.length = 0.35;  % km
line_param.B1.Z = 0.1156193; % Ohm
line_param.B1.phi = 13.99*pi/180; % rad
line_param.B1.R_1 = line_param.B1.Z * cos(line_param.B1.phi); % Ohm
line_param.B1.X_1 = line_param.B1.Z * sin(line_param.B1.phi); % Ohm
line_param.B1.R_0 = 0.44905; % Ohm
line_param.B1.X_0 = 0.1092; % Ohm
line_param.B1.B_1 = 38.48451e-6; % S
line_param.B1.C_1 = line_param.B1.B_1 / (2*pi*fnom); % F
line_param.B1.C_0 = 1e-9; % F
line_param.B1.L_1 = line_param.B1.X_1 / (2*pi*fnom); % H
line_param.B1.L_0 = line_param.B1.X_0 / (2*pi*fnom); % H

% RLC line section parameters calculation
% Lumped series and mutual parameters
line_param.B1.Rs = (2*line_param.B1.R_1 + line_param.B1.R_0)/3; % Ohm
line_param.B1.Ls = (2*line_param.B1.L_1 + line_param.B1.L_0)/3; % H
line_param.B1.Rm = (line_param.B1.R_0-line_param.B1.R_1)/3; % Ohm
line_param.B1.Lm = (line_param.B1.L_0-line_param.B1.L_1)/3; % H
line_param.B1.Cp = line_param.B1.C_1; % F
line_param.B1.Cg = 3*line_param.B1.C_1*line_param.B1.C_0 / ...
                            (line_param.B1.C_1-line_param.B1.C_0); % F

% -------------------------------------------------------------------------
% Cable B2 lumped parameters                        
line_param.B2 = line_param.B1;

% -------------------------------------------------------------------------
% Cable C1 lumped parameters
line_param.C1 = struct();
line_param.C1.crosssection = 240;  % mm2
line_param.C1.length = 0.7;  % km
line_param.C1.Z = 0.101; % Ohm
line_param.C1.phi = 32.2589*pi/180; % rad
line_param.C1.R_1 = line_param.C1.Z * cos(line_param.C1.phi); % Ohm
line_param.C1.X_1 = line_param.C1.Z * sin(line_param.C1.phi); % Ohm
line_param.C1.R_0 = 0.3556; % Ohm
line_param.C1.X_0 = 0.217; % Ohm
line_param.C1.B_1 = 74.769911e-6; % S
line_param.C1.C_1 = line_param.C1.B_1 / (2*pi*fnom); % F
line_param.C1.C_0 = 1e-9; % F
line_param.C1.L_1 = line_param.C1.X_1 / (2*pi*fnom); % H
line_param.C1.L_0 = line_param.C1.X_0 / (2*pi*fnom); % H

% RLC line section parameters calculation
% Lumped series and mutual parameters
line_param.C1.Rs = (2*line_param.C1.R_1 + line_param.C1.R_0)/3; % Ohm
line_param.C1.Ls = (2*line_param.C1.L_1 + line_param.C1.L_0)/3; % H
line_param.C1.Rm = (line_param.C1.R_0-line_param.C1.R_1)/3; % Ohm
line_param.C1.Lm = (line_param.C1.L_0-line_param.C1.L_1)/3; % H
line_param.C1.Cp = line_param.C1.C_1; % F
line_param.C1.Cg = 3*line_param.C1.C_1*line_param.C1.C_0 / ...
                            (line_param.C1.C_1-line_param.C1.C_0); % F

% -------------------------------------------------------------------------
% Cable C2 lumped parameters
line_param.C2 = line_param.C1;

% -------------------------------------------------------------------------
% Cable E1 lumped parameters
line_param.E1 = struct();
line_param.E1.crosssection = 240;  % mm2
line_param.E1.length = 0.45;  % km
line_param.E1.Z = 0.0649; % Ohm
line_param.E1.phi = 32.2589*pi/180; % rad
line_param.E1.R_1 = line_param.E1.Z * cos(line_param.E1.phi); % Ohm
line_param.E1.X_1 = line_param.E1.Z * sin(line_param.E1.phi); % Ohm
line_param.E1.R_0 = 0.524; % Ohm
line_param.E1.X_0 = 0.295; % Ohm
line_param.E1.B_1 = 91.8e-6; % S
line_param.E1.C_1 = line_param.E1.B_1 / (2*pi*fnom); % F
line_param.E1.C_0 = 1e-9; % F
line_param.E1.L_1 = line_param.E1.X_1 / (2*pi*fnom); % H
line_param.E1.L_0 = line_param.E1.X_0 / (2*pi*fnom); % H

% RLC line section parameters calculation
% Lumped series and mutual parameters
line_param.E1.Rs = (2*line_param.E1.R_1 + line_param.E1.R_0)/3; % Ohm
line_param.E1.Ls = (2*line_param.E1.L_1 + line_param.E1.L_0)/3; % H
line_param.E1.Rm = (line_param.E1.R_0-line_param.E1.R_1)/3; % Ohm
line_param.E1.Lm = (line_param.E1.L_0-line_param.E1.L_1)/3; % H
line_param.E1.Cp = line_param.E1.C_1; % F
line_param.E1.Cg = 3*line_param.E1.C_1*line_param.E1.C_0 / ...
                            (line_param.E1.C_1-line_param.E1.C_0); % F

% -------------------------------------------------------------------------
% Cable E2 lumped parameters
line_param.E2 = line_param.E1;

% -------------------------------------------------------------------------
% Cable F1 lumped parameters
line_param.F1 = struct();
line_param.F1.crosssection = 150;  % mm2
line_param.F1.length = 0.33;  % km
line_param.F1.Z = 0.0715; % Ohm
line_param.F1.phi = 21.1135*pi/180; % rad
line_param.F1.R_1 = line_param.F1.Z * cos(line_param.F1.phi); % Ohm
line_param.F1.X_1 = line_param.F1.Z * sin(line_param.F1.phi); % Ohm
line_param.F1.R_0 = 0.832; % Ohm
line_param.F1.X_0 = 0.305; % Ohm
line_param.F1.B_1 = 66.33e-6; % S
line_param.F1.C_1 = line_param.F1.B_1 / (2*pi*fnom); % F
line_param.F1.C_0 = 1e-9; % F
line_param.F1.L_1 = line_param.F1.X_1 / (2*pi*fnom); % H
line_param.F1.L_0 = line_param.F1.X_0 / (2*pi*fnom); % H

% RLC line section parameters calculation
% Lumped series and mutual parameters
line_param.F1.Rs = (2*line_param.F1.R_1 + line_param.F1.R_0)/3; % Ohm
line_param.F1.Ls = (2*line_param.F1.L_1 + line_param.F1.L_0)/3; % H
line_param.F1.Rm = (line_param.F1.R_0-line_param.F1.R_1)/3; % Ohm
line_param.F1.Lm = (line_param.F1.L_0-line_param.F1.L_1)/3; % H
line_param.F1.Cp = line_param.F1.C_1; % F
line_param.F1.Cg = 3*line_param.F1.C_1*line_param.F1.C_0 / ...
                            (line_param.F1.C_1-line_param.F1.C_0); % F

% -------------------------------------------------------------------------
