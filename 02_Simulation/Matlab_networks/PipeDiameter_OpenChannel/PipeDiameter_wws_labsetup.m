clc
clear all
close all

% ========== Calculate the diameter for an open-channel pipe.======
%Laboratory setup Parameter.
K_n = 1; % parameter for SI
%PUMPS
num_pumps = 3 ; % Number of pumps in paraller in the pumping station.
q_max = 2/3600; % Nominal flow of the pump(alpha3) for a head pressure of 4 m
Q = num_pumps*q_max; % Volumetric flow at the operating poing (max) [2 m3/h]
%SLOPE
S = 0.00001:0.00001:0.01;
S1 = 0.015; % Slope
%FRICTION
n1 = 0.013; % Manning coefficient. Manning's n for Channels (Chow, 1959).
n2 = 0.02;
%Section geometry (A)
theta1 = pi;  
theta2 = pi/2;
theta3 = 0.75*pi;
theta4 = 0.983*pi;

D=0:0.001:10/100;
D1 = 0.03;
D2 = 0.04;
D3 = 0.05;
D4 = 0.07;

%% Solve Manning's formula for diameter (d) and flow (q).

for i=1:length(S)  
    %Variable friction factor - manning
    d_n1(i) = manning_d(Q, n1, S(i),theta2);
    d_n2(i) = manning_d(Q, n2, S(i),theta2);
    %Variable flow pipe section
    d_theta1(i) = manning_d(Q, n1, S(i),theta1);
    d_theta2(i) = manning_d(Q, n1, S(i),theta2);
    d_theta3(i) = manning_d(Q, n1, S(i),theta3);
    d_theta4(i) = manning_d(Q, n1, S(i),theta4);
    %Variable flow pipe section
    q_s1(i) = manning_q(K_n, D1, n1, S(i), theta1);
    q_s2(i) = manning_q(K_n, D1, n1, S(i), theta2);
    q_s3(i) = manning_q(K_n, D1, n1, S(i), theta3);
    q_s4(i) = manning_q(K_n, D1, n1, S(i), theta4);
    %Variable pipe diameter.
    q_d1(i) = manning_q(K_n, D1, n1, S(i), theta4);
    q_d2(i) = manning_q(K_n, D2, n1, S(i), theta4);
    q_d3(i) = manning_q(K_n, D3, n1, S(i), theta4);
    q_d4(i) = manning_q(K_n, D4, n1, S(i), theta4); 
end

for i=1:length(D) 
    q_1(i) = manning_q(K_n, D(i), n1, S1, theta1);
    q_2(i) = manning_q(K_n, D(i), n1, S1, theta2);
    q_3(i) = manning_q(K_n, D(i), n1, S1, theta3);
    q_4(i) = manning_q(K_n, D(i), n1, S1, theta4); 
end

%% ============= PLOT RESULTS ========

% Assuming fix flow of 2 m^3/h. Comparation between diameter and Slope.
subplot(2,1,1)
plot(S,[d_n1;d_n2].*100);
legend('n = 0.01 [-]','n = 0.02 [-]','Location','NorthEast');
grid;
Q_m3h = Q*3600;
str1 = sprintf('Full-pipe flow in circular pipe // Q_{max}= %d [m^3/h]', double(Q_m3h));
title(str1);

xlabel('Slope S [m/m]');
ylabel('Diameter d [cm]');
% Comparation between open-channel sections
subplot(2,1,2)
plot(S,[d_theta1;d_theta2;d_theta3;d_theta4].*100);
legend('100%-pipe','50%-pipe ','75%-pipe','98.3%-pipe(Max-flow)','Location','NorthEast');
grid;
str1 = sprintf('Flow section variation // Q_{max}= %d [m^3/h]', double(Q_m3h));
xlabel('Slope S [m/m]');
ylabel('Diameter d [cm]');

% Assuming a fixed Diameter.  Comparation between open-channel sections
figure
subplot(3,1,1)
plot(D,[q_1;q_2;q_3;q_4].*3600);
legend('100%-pipe','50%-pipe ','75%-pipe','98.3%-pipe(Max-flow)','Location','NorthEast');
grid;
str2 = sprintf('Bed Slope // S_{b}= %d [m/m]', double(S1));
title(str2);
%title(' S_{bed}= 0.003 [-]');
xlabel('Diameter d [m]');
ylabel('Flow q [m^3/h]');
%Fixed diameter, observe variations of flow and Slope.
subplot(3,1,2)
plot(S,[q_s1;q_s2;q_s3;q_s4].*3600);
legend('100%-pipe','50%-pipe ','75%-pipe','98.3%-pipe(Max-flow)','Location','NorthEast');
grid;
title(' d_{pipe}= 2 [cm]');
xlabel('Slope S [-]');
ylabel('Flow q [m^3/h]');
%Fixed diameter, observe variations of flow and Slope.
subplot(3,1,3)
plot(S,[q_d1;q_d2;q_d3;q_d4].*3600);
legend('d=1 [cm]','d=2 [cm]','d=3 [cm]','d=5 [cm]','Location','NorthEast');
grid;
title(' max-flow pipe');
xlabel('Slope S [-]');
ylabel('Flow q [m^3/h]');


% Manning equation:

%syms d q S n positive % Pipe diameter
%Eqn1 = Q == A*(K_n/n)*(A/P_w)^(2/3)*(S)^(1/2);
%sol_d = solve(Eqn1, d);
