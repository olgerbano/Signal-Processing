function [ ] = ex3_d()
T=1;
N=33;
n=0:N-1;
t=0:1/2:N-1;
w1=pi/3;
w2=2*pi+pi/3;

xa1=sin(w1.*t);
xn1=sin(n.*w1.*T);

xa2=sin(w2.*t);
xn2=sin(n.*w2.*T);

figure(1)
subplot(1,2,1)
stem(n,xn1,'k');
subplot(1,2,2)
plot(t,xa1,'r');
figure(2)
subplot(1,2,1)
stem(n,xn2,'m');
subplot(1,2,2)
plot(t,xa2,'b');
%legend('xn1','xa1','xn2','xa2');
end

