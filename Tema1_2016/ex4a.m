function [] = ex4a()
    %M = 1    
    %while(M~=0)
        x = randn(1,10); % media 0 , dispersia 1 /// zero mean and unit variance
        M = mean(x);
    %end
    [rx,lag] = xcorr(x,5,'biased');
    figure(1)
    plot(rx)
    %lag
    for i=1:10
        x = randn(1,10+2*i);
        [rx,lag] = xcorr(x,5,'biased');
        figure(i+1)
        plot(lag,rx)
    end
    
    
    
end