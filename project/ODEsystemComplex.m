% y(i) = variable i with respect to t
% dydt(i) = dy(i)/dt

function dydt = ODEsystemComplex(t, y)

% Static Parameters
Vzero = 4.1; % [4.0-4.3]
VO = 10^Vzero;


d = 0.01;
c = 23;
f = 0.05;
gamma = 0.5;
omega = 1.26;
K = 16;
p = 3.05;
km = 5000; % [4000-6000] set initial value to 5000

CD4 = 600;
kOffS = 2.75;
kOffR = 2.75;
kOnR = 0.01;
kOnS = 0.01;
kOni = 1.4;

fs = 0.9; % [0-1](CANNOT GO PAST 1)(You fix this to 0.9 if needed);  VARY
AO = 1100;

TO = 0.1 * CD4;
VsO = fs * VO;
VrO = (1 - fs) * VO;
IsO = c * VsO / p;
IrO = c * VrO / p;
CsO = 0.00;
CrO = 0.00; % Ab has not taken effect yet so these start at zero
CpO = 0.00;


% Dynamic Parameters
delta = 0.972 / (IsO)^(omega - 1);
betaS = delta * (IsO)^(omega) / (f * VsO * TO);
betaR = delta * (IrO)^(omega)/ (f * VrO * TO);
lambda = d * TO + betaS * TO * VsO + betaR * TO * VrO;

% Initial conditions for all N 
dydt = [TO; IsO; IrO; VsO; VrO; CsO; CrO; CpO; AO];

% Equations
% y(1) = T
% y(2) = Is
% y(3) = Ir
% y(4) = Vs
% y(5) = Vr
% y(6) = Cs
% y(7) = Cr
% y(8) = Cp
% VL = Vr + Vs + Cr + Cs 

dydt(1) = lambda - d * y(1) - betaS * y(1) * y(4) - betaR *y(1) * y(5);
dydt(2) = f * betaS * y(1) * y(4) - delta * (1 + kOni * y(9)) * y(2)^omega;
dydt(3) = f * betaR * y(1) *y(5) - delta * y(3)^omega;
dydt(4) = p * y(2) - c * y(4) - kOnS * y(4) * y(9) + kOffS * y(6);
dydt(5) = p * y(3) - c * y(5) - kOnS * y(5) * y(9) + kOffR * y(7);
dydt(6) = kOnS * y(4) * y(9) - kOffS * y(6) - (gamma * (1 - y(8)/K) * y(6));
dydt(7) = kOnR * y(5) * y(9) - kOffR * y(7) - (gamma * (1 - y(8)/K) * y(7));
dydt(8) = gamma * (1 - y(8)/K) * (y(6) + y(7)) - km * y(8);
dydt(9) = -27.5 * y(9)/100;

end