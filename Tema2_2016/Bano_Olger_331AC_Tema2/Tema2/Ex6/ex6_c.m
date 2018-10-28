function ex6_c()
    
    [e,n] = ex5();
    w0 = pi/8;
    a = 500;
    x = cos(w0 .*n) + a.*e;
    %plot(n,x);
    subplot(2,1,1)
    stem(n,x);
    
    w = -pi:0.01:pi;
    X = freqz(x,1,w);
    nr_X = length(X);
    pow = abs(X(1:nr_X)).^2;
    subplot(2,1,2)
    plot(w,pow);
    max(pow)
    index = find(pow==max(pow));
    w(index)
    zgomot = a.*e;
    SNR = 20*log10(x(1)/zgomot(1))
end