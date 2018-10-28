function tema3_4_a()

b0 = 0.25;
b1 = [1  1];
b2 = [1  0.85];
a1 = [1 -0.8];
a2 = [1 -0.9 ];
a3 = [1 0.75];
b = b0*conv(b1,b2);
a = conv(a1,a2);
a = conv(a,a3);
w = -pi:0.01:pi;
[h] = freqz(b,a,w);

if(isstable(b,a))
    figure
    plot(w/pi,20*log10(abs(h)))
    xlabel('Frequency (\times rad/sample)')
    ylabel('Magnitude (dB)')
    
    figure
    plot(w/pi,abs(h))
    xlabel('Frequency (\times rad/sample)')
    ylabel('Magnitude')

    figure
    zplane(b,a,w)
    title('zplane ')
end
end