function [] = ex2b(w,Ts,M)
%2*pi*f = w;
f = w / (2*pi); %Frequency of sinusoid
nCyl = f*(M) %nr of cycles


Fs = 1/Ts; %sampling rate
n=0:M-1; 
x=sin(w.*n.*Ts);
 
stem(n,x)
title('Discrete sinusoidal signal');


end