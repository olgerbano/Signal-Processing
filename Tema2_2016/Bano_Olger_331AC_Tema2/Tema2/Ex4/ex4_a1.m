function ex4_a1()
    
    load sunspot.dat
    anul = sunspot(:,1)';
    valoare = sunspot(:,2)';
    NN = 60;
    a = 60;
    valoare = valoare(a:NN+a-1);
    anul = 0:NN-1;
    nr_val = length(valoare)
    subplot(2,1,1)
    plot(anul,valoare);
    xlabel('anul')
    ylabel('valoare')
    title('graficul numarului de pete solare')
    Y = fft(valoare);
    Y(1) = [];
    m = abs(Y);
    p = angle(Y);
    nr_Y = length(Y);
    yFs = 1;
    f = (1:nr_Y/2) * yFs/nr_Y;
    pow = abs(Y(1:nr_Y/2));
    index = find(pow==max(pow));
    (f(index))
    pepe = 1/f(index)
    period = 1./f;
    subplot(2,1,2)
    plot(period,pow);
    xlabel('period')
    ylabel('putere')
    title('graficul puterii');  
    %xlim([0,15]);
    index = find(pow==max(pow));
    round(period(index))
    
end