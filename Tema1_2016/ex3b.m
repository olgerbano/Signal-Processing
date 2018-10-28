 function [p1 k1 p2 k2] = ex3_b()

T=1;
w1 = 3*pi/15;
N= 2*pi/w1;
f1 = w1 / (2*pi); %Frequency of sinusoid
k1 = ((N-1)*w1)/(2*pi);
p1 = 1/f1;
t=0:1:N;
n=0:N;
xa1 = sin(w1.*t);
xn1 = sin(n.*w1.*T);


w2 = (9*pi)/15;
f2 = w2 / (2*pi); %Frequency of sinusoid
p2 = 1/f2;
k2 = ((N-1)*w2)/(2*pi);
xa2 = sin(w2.*t);
xn2 = sin(n.*w2.*T);
figure(1);
stem(n,xn1);
hold on
plot(t,xa1);
figure(2);
stem(n,xn2);
hold on
plot(t,xa2);
 

end

