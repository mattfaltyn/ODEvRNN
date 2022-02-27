clear all; 
close all; 
clc

tic

for i=1:5000

    % Set initial conditions (if you have N conditions in ODEsystem function, N must be set)
     TO = 60 + (-1)^randi(100) * rand()*20; 
    IsO = 26000 + (-1)^randi(100) * rand()*1000;
    IrO = 3000 + (-1)^randi(100) * rand()*1000; 
    VsO = 3500 + (-1)^randi(100) * rand()*500; 
    VrO = 400 + (-1)^randi(100) * rand()*250;  
    CsO = 0; 
    CrO = 0; 
    CpO = 0; 
    AO = 1100 + (-1)^randi(100) * rand()*450;

    y0 = [TO; IsO; IrO; VsO; VrO; CsO; CrO; CpO; AO];
    
    % Time steps
    tspan = [0:100]; 

    % ODE Solver
    [t,y] = ode23s(@ODEsystemComplex,tspan,y0);

    x = [t,y];
    v = x(:,[5:8]);
    z = log10(real(sum(v,2)));
    w(:,i) = z;
end
writematrix(w,'Test.csv')

toc
% 8316.674043