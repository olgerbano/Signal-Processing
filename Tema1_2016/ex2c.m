function [] = ex2c(w,Ts,M)

f = w / (2*pi);
fs=1; 
t=0:1/fs:M; %time index
x=sin(w*t);
 

n = 0:M;
x1=sin(w*n*Ts);


figure(1)
plot(t,x)
hold on
stem(n,x1)


end

