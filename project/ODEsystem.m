% y(i) = variable i with respect to t
% dydt(i) = dy(i)/dt

function dydt = ODEsystem(t,y)

% Initial conditions
dydt = [0;0;50];

% Parameters
alpha = 0.1;
beta = 0.2;
delta = 0.3;
gamma = 0.4;

% Equations
dydt(1) = - y(1)+ alpha * 3 * y(2);
dydt(2) = - 3 * beta * y(2) + delta * 5 * y(3);
dydt(3) =  - 5 * gamma * y(3);
end