function [e,n]=ex5()

    n = (0:600)/100;
    e = randn(1,length(n));
    w = -pi:0.01:pi;
    X = freqz(e,1,w);
    m = (abs(X)).^2;
    plot(w,m);
    
    %Y = fft(e);
    %Y(1) = [];
    %nr_Y = length(Y);
    %pow = abs(Y(1:nr_Y/2)).^2;
    %yFs = 20;
    %f = (1:nr_Y/2) * yFs/nr_Y;
    %period = 1./f;
    %plot(period,pow);

end