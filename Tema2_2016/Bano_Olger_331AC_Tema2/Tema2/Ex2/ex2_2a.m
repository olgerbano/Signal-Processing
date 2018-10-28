function ex2_2a()

w0 = pi/8;
w = -pi:0.01:pi;
n = 1:101-1;
%fi = linspace(0,2*pi,1000);
fi = 2*pi;
x = cos(w0.*n + fi);

X = freqz(x,1,w);
m = abs(X);
plot(w,m,'r')
%hold on
%fi = pi;
%x = cos(w0*n + fi);
%X = freqz(x,1,w);
%m = abs(X);
%plot(w,m,'b')
%hold on
%fi = 2*pi;
%x = cos(w0*n + fi);
%X = freqz(x,1,w);
%m = abs(X);
%plot(w,m,'g')

end