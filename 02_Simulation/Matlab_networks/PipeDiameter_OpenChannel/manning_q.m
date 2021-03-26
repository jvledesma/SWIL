%Manning equation 

function [q] = manning_q (K_n, d, n, S, theta)


A = (1/8)*(2*theta - sin(2*theta))*d^2; %Circular. Cross sectional area of the pipe
P_w = theta*d;  %Wetted perimeter 
R_h = A/P_w;    %Hydraulic radius

%Solve equation for flow (q)

q = A*(K_n/n)*(R_h)^(2/3)*(S).^(1/2);