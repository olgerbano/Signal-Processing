function [p k] = ex3_c(w,T)

N= 2*pi/w;
f = w / (2*pi); %Frequency of sinusoid
k = ((N)*w)/(2*pi);
p = 1/f;
t=0:1:N;
n=0:N;

xa = sin(w.*t);
xn = sin(n.*w.*T);
stem(n,xn);
hold on
plot(t,xa);
end

