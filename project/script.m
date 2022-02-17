clear all; 
close all; 
clc






for i=1:10

    % Set initial conditions (if you have N conditions in ODEsystem function, N must be set)
    % y0 = [1 + (-1)^(randi(1000)) * rand(1); 2 + (-1)^(randi(1000)) * rand(1); 50 + (-1)^(randi(1000)) * rand(1)];
    TO = 60 + (-1)^randi(100) * rand()*30; 
    IsO = 85000 + (-1)^randi(100) * rand()*30000;
    IrO = 15000 + (-1)^randi(100) * rand()*10000; 
    VsO = 11000 + (-1)^randi(100) * rand()*4500; 
    VrO = 1250 + (-1)^randi(100) * rand()*650; 
    CsO = 0; 
    CrO = 0; 
    CpO = 0; 
    AO = 1100 + (-1)^randi(100) * rand()*450;

    y0 = [TO; IsO; IrO; VsO; VrO; CsO; CrO; CpO; AO];
    
    % Time steps
    tspan = [0:39]; 

    % ODE Solver
    [t,y] = ode23(@ODEsystemComplex,tspan,y0);

    x = [t,y];
    v = x(:,[5:8]);
    z = log10(real(sum(v,2)));
    w(:,i) = z;
end
writematrix(w,'Test.csv')
% Check to ensure loop is working correctly - should be 40x100
% size(w)

% Export solutions to CSV - rows are timepoints, columns are participants
% writematrix(w,'Test.csv')



% V=Vr+Vs+Cr+Cs

% y(4) = Vs
% y(5) = Vr
% y(6) = Cs
% y(7) = Cr