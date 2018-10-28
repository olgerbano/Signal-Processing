function ex6_b()

    w = -pi:0.01:pi;
    [x,n] = ex6_a();
    X = freqz(x,1,w);
    nr_X = length(X);
    pow = abs(X(1:nr_X)).^2;
    plot(w,pow);
    max(pow)
    index = find(pow==max(pow));
    w(index)
end