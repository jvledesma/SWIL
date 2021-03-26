clear all
close all
clc

Pipe_length =   10.*[30;  10;  10]; % Unit (dm)
Pipe_radio = 10.*[0.020; 0.015; 0.010]./2;                  %Unit (dm)
Empty_Weight = 50 ; % Kg of the empty unit (valves and pipes)

Unit_Weight = (pi*(Pipe_radio).^2).*Pipe_length + Empty_Weight %Double pipe line per unit.