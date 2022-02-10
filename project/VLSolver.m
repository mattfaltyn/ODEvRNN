clear all; 
close all; 
clc

% Viral dynamics modeling
V0=10^Vzero

% Initial conditions and parameters outlining model
d=0.01 
c=23
f=0.05
epsilon = ART
K=10^log10K

Vs_0=fs*V0
Vr_0=(1-fs)*V0
T_0=0.1*CD4
Is_0=c*Vs_0/p
Ir_0=c*Vr_0/p
koff_s=2.75
koff_r=2.75

delta=delta1/(Is_0)^(omega-1)
B_s=delta*(Is_0)^(omega)/(f*Vs_0*T_0)
B_r=delta*(Ir_0)^(omega)/(f*Vr_0*T_0)
lambda=d*T_0+B_s*T_0*Vs_0+B_r*T_0*Vr_0

if (t<=W)
  Beta_S=B_s
  Beta_R=B_r
else
  Beta_S=B_s*(1-epsilon)
  Beta_R=B_r*(1-epsilon)
end


ddt_T= lambda-d*T-Beta_S*T*Vs-Beta_R*T*Vr
ddt_Is=f*Beta_S*T*Vs-delta*(1+k_oni*A)*Is^(omega)
ddt_Ir=f*Beta_R*T*Vr-delta*Ir^(omega)
ddt_Vs=p*Is-c*Vs-kon_s*Vs*A+koff_s*Cs
ddt_Vr=p*Ir-c*Vr-kon_s*Vr*A+koff_r*Cr
ddt_Cs=kon_s*Vs*A-koff_s*Cs-(gamma*(1-Cp/K)*Cs)
ddt_Cr=kon_r*Vr*A-koff_r*Cr-(gamma*(1-Cp/K)*Cr)
ddt_Cp=gamma*(1-Cp/K)*(Cs+Cr)-km*Cp
V=Vr+Vs+Cr+Cs