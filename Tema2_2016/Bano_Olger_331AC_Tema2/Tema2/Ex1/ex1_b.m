function ex1_b()

w0 = pi/8;
M = 100;
%n = 0:M-1;

f = 1/48;
oversamplerate = 20;
fs = oversamplerate * f;
nr_per = 10;
n = 0:1/fs:nr_per*1/f;

length(n)
w = -pi:0.01:pi;
length(w);
j = sqrt(-1);
%x = exp(j*w0.*n);
x = cos(w0.*n) + j*sin(w0.*n);
%plot(n,x);
X = freqz(x,1,w);
m = abs(X);
max(m)
plot(w,m)
%stem(w,m)
xlabel('omega')
ylabel('abs(X)')

max(abs(sin(((w-w0).*length(n))/2) ./ sin((w-w0)/2)))



end