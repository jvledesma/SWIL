%Manning equation 

function [d2] = manning_d (q, n, S, theta)


%Solve equation for diameter (d)

k1 = (1/8)*(2*theta - sin(2*theta));
k2 = theta.^(2/3);

d2 = (q*n*k2/(k1*S^(1/2)))^(3/8);
