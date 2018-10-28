function [] = ex4_c()
    xilo= wavread('xilo');
    xl = xilo(8000:10000);
    figure(1)
    plot(xl);
    rx=xcorr(xl,1500,'biased');
    kmaximum = find(rx==max(rx))
    vmax = max(rx)
    vmin = min(rx)
    kminimum = find(rx==min(rx))
    
    [pksh,lcsh] = findpeaks(rx);
    period = mean(diff(lcsh))
    figure(2)
    plot(rx,'k');

end

