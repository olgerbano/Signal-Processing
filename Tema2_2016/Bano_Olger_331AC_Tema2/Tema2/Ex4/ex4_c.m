function  ex4_c()

[x,yFs]= audioread('xilo.wav');
valoare = x(8000:10000);
%yFs = yFs/1000;
%n = 0:length(valoare)-1;
n = 1/yFs:1/yFs:length(valoare)/yFs;
nr_val = length(valoare);
subplot(2,1,1)
plot(n,valoare);
xlabel('anul')
ylabel('valoare')
title('graficul numarului de pete solare')
Y = fft(valoare);
Y(1) = [];
m = abs(Y);
p = angle(Y);
nr_Y = length(Y);
%yFs = 1;
f = (1:nr_Y/2) * yFs/nr_Y;
pow = abs(Y(1:nr_Y/2));
index = find(pow==max(pow));
(f(index))
pepe = 1/f(index)
period = 1./f;
subplot(2,1,2)
plot(period,pow);
xlabel('period')
ylabel('putere')
title('graficul puterii');  
%xlim([20,35]);
index = find(pow==max(pow));
round(period(index))
yFs
end