clear all; 
close all; 
clc

tspan = [0 40];
y0 = 0;
[t,y] = ode45(@(t,y) 2*t, tspan, y0);

writematrix([t,y],'Test.csv')