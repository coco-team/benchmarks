% Options
DEADRECKONING          = 1;
GPS_SPEED_MIN          = 1.5;
WIND_NAV_AIR_SPEED_MIN = 2.;
CROSS_TRACK            = 1 ;
SPEED_CONTROL          = 1 ;
WAYPOINT_RADIUS        = 30. ;

% Altitude control parameters
T_min     =   0.35 ;
T_max     =   1. ;
theta_max =  15. ;
theta_min = -15. ;
theta_0   = -15. ;
DH        =  10. ;
Vsp       =  10. ;

% S function parameter vector
Rpar = [GPS_SPEED_MIN WIND_NAV_AIR_SPEED_MIN DEADRECKONING];

