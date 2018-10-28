 function [] = ex3a()

T=1;
w = pi/15;
N= 2*pi/w;
k = (N*w)/(2*pi)
f = w / (2*pi); %Frequency of sinusoid
p = 1/f
t=0:1:N;
n=0:N;
xa = sin(w.*t);
xn = sin(n.*w.*T);


stem(n,xn);
hold on
plot(t,xa);
 

end

