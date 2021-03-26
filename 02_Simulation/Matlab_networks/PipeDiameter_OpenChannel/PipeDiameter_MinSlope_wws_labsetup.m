clc
clear all
close all

% ========== Calculate the diameter for an open-channel pipe.======
%Laboratory setup Parameter.
K_n = 1; % parameter for SI
%PUMPS
num_pumps = 3 ; % Number of pumps in paraller in the pumping station.
q_nom = 2/3600; % Nominal flow of the pump(alpha3) for a head pressure of 4 m
q_unit = num_pumps*q_nom; % Volumetric flow at the operating poing (max) [2 m3/h]

%FRICTION % Manning coefficient. Manning's n for Channels (Chow, 1959).
n1 = 0.013; 
% BOX - Size
D = [0.5, 1, 1.2, 2]; % Length of the unit setup (coil-diameter)
%Section geometry (A)
theta1 = pi; theta2 = pi/2; theta3 = 0.75*pi; theta4 = 0.983*pi;
d=0:0.001:10/100;

%% Solve Manning's formula for diameter (d) and flow (q).

for i=1:length(d) 
    S_min(i,:) = d(i)./(D.*pi);  %Calculated for 4 different "lab-units" size. Big diameter. 
    q(i,:) = manning_q(K_n, d(i), n1, S_min(i,:), theta2);

end

%% ====== Laboratory Box Size and Pipe length  ===========

H = [0.4, 0.5, 0.75, 1] % Maximum height of the unit
d0= 0.08; %Chosen pipe diameter.

Pipe_x = (H/d0)'.*D.*pi %Total length the pipe.

A_w = (1/8)*(2*theta2 - sin(2*theta2))*d0^2;
v_unit = q_unit/(A_w);
t_delay = Pipe_x./v_unit
%% ============= PLOT RESULTS ========
% Assuming fix flow of 2 m^3/h. Comparation between diameter and Slope.
subplot(2,1,1)
plot(d*100,q*3600,'Linewidth',1);
refline(0,6)
str1 = sprintf('D=%0.5g [m]', D(1));
str2 = sprintf('D=%0.5g [m]', double(D(2)));
str3 = sprintf('D=%0.5g [m]', double(D(3)));
str4 = sprintf('D=%0.5g [m]', D(4));

legend(str1,str2,str3,str4,'Location','NorthWest','Interpreter','latex');
grid;
Q_m3h = q_unit*3600;
str5 = sprintf('Half-pipe flow in circular pipe // Q_{ref}= %d [m^3/h]', double(Q_m3h),'Interpreter','latex');
%title(str5,'Linewidth',1);

xlabel('Pipe Diameter d [$cm$]','Interpreter','latex');
ylim([0 10]);
ylabel('Flow q [$m^3/h$]','Interpreter','latex');
% Comparation between open-channel sections
subplot(2,1,2)
plot(d*100,S_min,'Linewidth',1);
str1 = sprintf('D=%0.5g [m]', D(1));
str2 = sprintf('D=%0.5g [m]', double(D(2)));
str3 = sprintf('D=%0.5g [m]', double(D(3)));
str4 = sprintf('D=%0.5g [m]', D(4));

legend(str1,str2,str3,str4,'Location','NorthWest','Interpreter','latex');
grid;
str6 = sprintf('Flow section variation // Q_{max}= %d [m^3/h]', double(Q_m3h),'Interpreter','latex');
xlabel('Pipe Diameter d [cm]','Interpreter','latex');
ylabel('Slope $S_b$ [m/m]','Interpreter','latex');

% x0=150; y0=200;
% width=300; height=300;
% set(gcf,'position',[x0,y0,width,height])
% print('-dsvg','-painters','.\plot_result.svg')
