function ex3_d()

N = 100;
n = 0:N-1;
w1 = pi/8;
%w2 = 0.01 + ((pi/8)/(2*pi));
w2 = 0.01+w1;
x1 = 2*sin(w1 .*n + pi/4);
x2 = sin(w2 .*n);
x = x1 + x2;
subplot(2,1,1)
stem(x);
w = -pi:0.01:pi;
X = freqz(x,1,w);
m = abs(X);
subplot(2,1,2)
plot(w,m);

end