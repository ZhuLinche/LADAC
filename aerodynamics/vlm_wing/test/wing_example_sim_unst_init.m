% init parameters of Simulink model

% Disclamer:
%   SPDX-License-Identifier: GPL-2.0-only
% 
%   Copyright (C) 2020-2022 Yannic Beyer
%   Copyright (C) 2022 TU Braunschweig, Institute of Flight Guidance
% *************************************************************************

clear all

wing = wingCreate(wing_parametric( 10, 0.5, 0.1, 0.01 ),30,'is_unsteady',true);

wing_state_bus = struct2bus_(wing.state);

atmosphereBus = struct2bus_(isAtmosphere(0));

open('wing_example_unst_sim')

%% simulate

sim('wing_example_unst_sim','StartTime','0','StopTime','1');