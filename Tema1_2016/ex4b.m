function [] = ex4_b (w,k)
   
    T=1;
    N = (2*pi*k +w )/w;
    
    n=0:N-1;
    t=0:1:N-1;

    xa=sin(w.*t);
    xn=sin(n.*w.*T);
    f = w / (2*pi); %Frequency of sinusoid
    p = 1/f
    
    figure(1)
    subplot(1,2,1)
    stem(n,xn);
    subplot(1,2,2)
    plot(t,xa);
    L=250;
    [rx,lags]=xcorr(xn,L,'biased');
    rx;
    maximum = find(rx==max(rx))
    minimum = find(rx==min(rx))
    [pksh,lcsh] = findpeaks(rx);
        
    short = mean(diff(lcsh))
    figure(2)
    plot(rx);
    
    
end