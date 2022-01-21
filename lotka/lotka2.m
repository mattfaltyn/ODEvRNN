clear all; 
close all; 
clc

%specify the region of the plot for vector plot
[x1, x2] = meshgrid(0:0.5:10, 0:.5:10);
x1dot = x1 - x2 .*x1; %Note the use of .* and .^
x2dot = x1 .* x2 - x2;

%first plot the vector plot with quiver
figure
quiver(x1,x2,x1dot, x2dot)

% predator-prey Lotka-Volterra system
a = 1;
b = 1;
c = 0.5;
d = 0.7;
k = 20;
f = @(t,y) [a*y(1)*(1 - y(1)/k) - b*y(1)*y(2); c*y(1)*y(2) - d*y(2)];
hold on

%calculate the phase trajectories for different initial conditions
for y0=0:1:5
[ts, ys] = ode45(f,[0 20], [y0/2, y0]);

% plot of closed loop phase trajectories
plot(ys(:,1), ys(:,2))
end
hold off
xlabel('x')
ylabel('y')