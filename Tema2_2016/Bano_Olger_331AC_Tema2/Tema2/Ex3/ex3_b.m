function ex3_b()
w = -pi:0.01:pi;
x = ex3_a();
X = freqz(x,1,w);
m = abs(X);
plot(w,m);
end