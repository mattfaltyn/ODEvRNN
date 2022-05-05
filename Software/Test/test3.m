clear all; 
close all; 
clc

for i=1:100;

    % Set initial conditions (if you have N conditions in ODEsystem function, N must be set)
    y0 = [1 + (-1)^(randi(1000)) * rand(1); 2 + (-1)^(randi(1000)) * rand(1); 50 + (-1)^(randi(1000)) * rand(1)];
    
    % Time steps
    tspan = [0:39]; 

    % ODE Solver
    [t,y] = ode45(@ODEsystem,tspan,y0);
    x = [t,y];
    v = x(:,2);
    w(:,i) = v;
end

% Check to ensure loop is working correctly - should be 40x100
size(w)

% Export solutions to CSV - rows are timepoints, columns are participants
writematrix(w,'Test.csv')