%set_param(0,'CharacterEncoding','ISO-8859-1')



% Initial conditions for flight dynamic state vector

u0     = Va_eq * cos(theta_eq);
w0     = Va_eq * sin(theta_eq);
q0     = 0;
theta0 = theta_eq;
h0     = h_eq;
CI_FD = [u0 w0 q0 theta0 h0];

% Elevator parameters

xi    = 0.85;
omega = 25;
A_de  = [0 1;-omega^2 -2*xi*omega];
B_de  = [0 omega^2]';
C_de  = [1 0];
D_de  = [0];
CI_de = [delta_e_eq 0];

% Engine parameters

A_dx  = [-0.75];
B_dx  = [0.75]';
C_dx  = [26350];
D_dx  = [0];
CI_dx = [delta_x_eq];

% h Sensor (Butterworth 3 Hz)
% Continuous

[num_h,den_h] = butter(2,2*pi*3,'low','s');
A_h  = [0 1;-den_h(end:-1:2)];
B_h  = [0 num_h(end)]';
C_h  = [1 0];
D_h  = [0];
CI_h = [h_eq 0];

% Discrete

G_h   = c2d(tf(num_h,den_h),Ts_f_h);
Az_h  = [0 1;-G_h.den{1}(end:-1:2)]';
Bz_h  = [G_h.num{1}(end:-1:2)]';
Cz_h  = [0 1];
Dz_h  = [0];
CIz_h = [1+G_h.den{1}(2)-G_h.num{1}(2) 1]*h_eq;

% Va Sensor (Butterworth 0.5 Hz)
% Continuous

[num_Va,den_Va] = butter(2,2*pi*0.5,'low','s');
A_Va  = [0 1;-den_Va(end:-1:2)];
B_Va  = [0 num_Va(end)]';
C_Va  = [1 0];
D_Va  = [0];
CI_Va = [Va_eq 0];

% Discrete

G_Va   = c2d(tf(num_Va,den_Va),Ts_f_Va);
Az_Va  = [0 1;-G_Va.den{1}(end:-1:2)]';
Bz_Va  = [G_Va.num{1}(end:-1:2)]';
Cz_Va  = [0 1];
Dz_Va  = [0];
CIz_Va = [1+G_Va.den{1}(2)-G_Va.num{1}(2) 1]*Va_eq;

% Vz Sensor (Butterworth 0.5 Hz)
% Continuous

[num_Vz,den_Vz] = butter(2,2*pi*0.5,'low','s');
A_Vz  = [0 1;-den_Vz(end:-1:2)];
B_Vz  = [0 num_Vz(end)]';
C_Vz  = [1 0];
D_Vz  = [0];
CI_Vz = [0 0];

% Discrete

G_Vz   = c2d(tf(num_Vz,den_Vz),Ts_f_Vz);
Az_Vz  = [0 1;-G_Vz.den{1}(end:-1:2)]';
Bz_Vz  = [G_Vz.num{1}(end:-1:2)]';
Cz_Vz  = [0 1];
Dz_Vz  = [0];
CIz_Vz = [0 0];

% q Sensor (Butterworth 3 Hz)
% Continuous

[num_q,den_q] = butter(2,2*pi*3,'low','s');
A_q  = [0 1;-den_q(end:-1:2)];
B_q  = [0 num_q(end)]';
C_q  = [1 0];
D_q  = [0];
CI_q = [0 0];

% Discrete

G_q    = c2d(tf(num_q,den_q),Ts_f_q);
Az_q  = [0 1;-G_q.den{1}(end:-1:2)]';
Bz_q  = [G_q.num{1}(end:-1:2)]';
Cz_q  = [0 1];
Dz_q  = [0];
CIz_q = [0 0];

% az Sensor (Butterworth 10 Hz)
% Continuous

[num_az,den_az] = butter(2,2*pi*10,'low','s');
A_az  = [0 1;-den_az(end:-1:2)];
B_az  = [0 num_az(end)]';
C_az  = [1 0];
D_az  = [0];
CI_az = [0 0];

% Discrete

G_az   = c2d(tf(num_az,den_az),Ts_f_az);
Az_az  = [0 1;-G_az.den{1}(end:-1:2)]';
Bz_az  = [G_az.num{1}(end:-1:2)]';
Cz_az  = [0 1];
Dz_az  = [0];
CIz_az = [0 0];














