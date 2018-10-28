function [x,n]=ex6_a()

    [e,n] = ex5();
    w0 = pi/8;
    x = cos(w0.*n) + e;
    %plot(n,x)
    stem(n,x);
    SNR = 20*log10(x(1)/e(1))
end