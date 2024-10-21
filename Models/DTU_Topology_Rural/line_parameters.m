%% DTU Line parameters for Simulink model

% IN THIS FILE, Cg is set to C1 (Cg = C1) instead of calculation Cg as
% follows: 3*line_param.A1.C_1*line_param.A1.C_0 / ...
%                             (line_param.A1.C_1-line_param.A1.C_0);

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
line_param.A1.Cp = line_param.A1.C_1; % F2
line_param.A1.Cg = line_param.A1.C_1;

% 3*line_param.A1.C_1*line_param.A1.C_0 / ...
%                             (line_param.A1.C_1-line_param.A1.C_0); % F
                        
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
line_param.B1.Cg = line_param.B1.C_1;

% 3*line_param.B1.C_1*line_param.B1.C_0 / ...
%                             (line_param.B1.C_1-line_param.B1.C_0); % F

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
line_param.C1.Cg = line_param.C1.C_1;

% 3*line_param.C1.C_1*line_param.C1.C_0 / ...
 %                           (line_param.C1.C_1-line_param.C1.C_0); % F

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
line_param.E1.Cg = line_param.E1.C_1;

%3*line_param.E1.C_1*line_param.E1.C_0 / ...
%                            (line_param.E1.C_1-line_param.E1.C_0); % F

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
line_param.F1.Cg = line_param.F1.C_1;

%3*line_param.F1.C_1*line_param.F1.C_0 / ...
%                            (line_param.F1.C_1-line_param.F1.C_0); % F

% -------------------------------------------------------------------------
% Cable T1 lumped parameters; 319a - trafo319
line_param.T1 = struct();
line_param.T1.crosssection = 240;  % mm2 
line_param.T1.length = 0.4;  % km
line_param.T1.Z = 0.0577; % Ohm 
line_param.T1.phi = 32.2580*pi/180; % rad 
line_param.T1.R_1 = line_param.T1.Z * cos(line_param.T1.phi); % Ohm
line_param.T1.X_1 = line_param.T1.Z * sin(line_param.T1.phi); % Ohm
line_param.T1.R_0 = 0.2032; % Ohm 
line_param.T1.X_0 = 0.124; % Ohm 
line_param.T1.B_1 = 4.2724e-05; % S 
line_param.T1.C_1 = line_param.T1.B_1 / (2*pi*fnom); % F
line_param.T1.C_0 = 1e-9; % F
line_param.T1.L_1 = line_param.T1.X_1 / (2*pi*fnom); % H
line_param.T1.L_0 = line_param.T1.X_0 / (2*pi*fnom); % H

% RLC line section parameters calculation
% Lumped series and mutual parameters
line_param.T1.Rs = (2*line_param.T1.R_1 + line_param.T1.R_0)/3; % Ohm
line_param.T1.Ls = (2*line_param.T1.L_1 + line_param.T1.L_0)/3; % H
line_param.T1.Rm = (line_param.T1.R_0-line_param.T1.R_1)/3; % Ohm
line_param.T1.Lm = (line_param.T1.L_0-line_param.T1.L_1)/3; % H
line_param.T1.Cp = line_param.T1.C_1; % F
line_param.T1.Cg = line_param.T1.C_1;

%3*line_param.T1.C_1*line_param.T1.C_0 / ...
%                            (line_param.T1.C_1-line_param.T1.C_0); % F

% -------------------------------------------------------------------------

% LINE TESTING with model from William H. Kersting
% phase to sequence impedance and vice-versa
% as = 1.0 * exp(j*deg2rad(120));

as = 1.0 * exp(j*deg2rad(120));

As = [1 1 1; 1 as^2 as; 1 as as^2];

As_inv = 1/3 * [1 1 1; 1 as as^2; 1 as^2 as];

% phase to sequence impedance
% [z012] = As_inv * [zabc] * As

% sequence to phase impedance
% => zabc = As * [z012] * As_inv

% Line parameter testing from Simulink => Power Line Parameters Tool
R1 = 0.01171;
R0 = 0.30127;
L1 = 0.00087;
L0 = 0.00299;
C1 = 1.34257e-08;
C0 = 8.58845e-09;

% RLC matrices, at 60Hz
R_phase = [0.10710      0.09729      0.09499 ; ... % (ohm/km)
           0.09729      0.11050      0.09729 ; ...
           0.09499      0.09729      0.10710 ];
L_phase = [0.00158      0.00075      0.00062 ; ... % (H/km)
           0.00075      0.00157      0.00075 ; ...
           0.00062      0.00075      0.00158 ];
C_phase = [1.16613e-08      -2.12683e-09      -5.83623e-10 ; ... % (F/km)
          -2.12683e-09       1.21174e-08      -2.12683e-09 ; ...
          -5.83623e-10      -2.12683e-09       1.16613e-08 ];

R_seq = As_inv * R_phase * As;
L_seq = As_inv * L_phase * As;
C_seq = As_inv * C_phase * As;

R_phase_reverse_eng = As * R_seq * As_inv;
L_phase_reverse_eng = As * L_seq * As_inv;
C_phase_reverse_eng = As * C_seq * As_inv;

%%
% R_seq =
% 
%    0.3013 + 0.0000i  -0.0010 - 0.0016i  -0.0010 + 0.0016i
%   -0.0010 + 0.0016i   0.0117 - 0.0000i   0.0002 + 0.0003i
%   -0.0010 - 0.0016i   0.0002 - 0.0003i   0.0117 - 0.0000i

R1 = 0.01171;
R0 = 0.30127;
L1 = 0.00087;
L0 = 0.00299;
C1 = 1.34257e-08;
C0 = 8.58845e-09;

R_seq_test = [R0      0      0 ; ... % (ohm/km)
              0      R1      0 ; ...
              0      0      R1 ];
R_phase_test_reverse_eng = As * R_seq_test * As_inv;

line_C.Rs = (2*R1 + R0)/3; % Ohm
line_C.Ls = (2*L1 + L0)/3; % H
line_C.Rm = (R0-R1)/3; % Ohm
line_C.Lm = (L0-L1)/3; % H
line_C.Cp = C1; % F
line_C.Cg = 3*C1*C0 / (C1-C0); % F

%%
% Simulink formulas
% Rs=(2R1+R0)/3
% Ls=(2L1+L0)/3
% Rm=(R0-R1)/3
% Lm=(L0-L1)/3
% Cp=C1
% Cg=3C1
% C0/(C1-C0)

% If a line is assumed to be transposed, the phase impedance matrix is modified so that 
% the three diagonal terms are equal and all of the off-diagonal
% terms are equal. A different method to compute the sequence impedances is
% to set the three diagonal terms of the phase impedance matrix equal to the
% average of the diagonal terms of Equation 4.56 and the off-diagonal terms
% equal to the average of the off-diagonal terms of Equation 4.56. When this is
% done, the self- and mutual impedances are defined as:

% Zs_book = 1/3*(z_aa + z_bb + z_cc);
% Zm_book = 1/3*(z_ab + z_bc + z_ca);
