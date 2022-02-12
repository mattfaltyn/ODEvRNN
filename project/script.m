clear all; 
close all; 
clc

for i=1:2;

    % Set initial conditions (if you have N conditions in ODEsystem function, N must be set)
    % y0 = [1 + (-1)^(randi(1000)) * rand(1); 2 + (-1)^(randi(1000)) * rand(1); 50 + (-1)^(randi(1000)) * rand(1)];
    y0 = [60; 9.49*10^4; 1000; 1.26*10^4; 100; 100; 100; 100];
    
    % Time steps
    tspan = [0:39]; 

    % ODE Solver
    [t,y] = ode23(@ODEsystemComplex,tspan,y0);
    %x = [t,y];
    %v = x(:,2);
    %w(:,i) = v;
end
writematrix([t,y],'Test.csv')
% Check to ensure loop is working correctly - should be 40x100
% size(w)

% Export solutions to CSV - rows are timepoints, columns are participants
% writematrix(w,'Test.csv')