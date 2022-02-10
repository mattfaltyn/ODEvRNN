clear all; 
close all; 
clc

% Set parameters
alpha = 0.1;

% Set initial conditions
y0 = [0;0;50];

% Time steps
tspan = [0 1 2 3 4 5]; 

% ODE Solver
[t,y] = ode45(@ODEsystem,tspan,y0);

% Plot ODE System
plot(t,y,'-o')

% Export solutions to CSV
writematrix([t,y],'Test.csv')