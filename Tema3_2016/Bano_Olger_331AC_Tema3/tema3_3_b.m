function tema3_3_b()


%teta = input('enter teta: ')
r1 = input('enter r1: ')
r2 = input('enter r2: ')
r3 = input('enter r3: ')
teta = r1/2;
a1 = [1 -2*r1*cos(teta) r1*r1];
w1 = -pi:0.01:pi;
[H1] = freqz(1,a1,w1);
figure  %1
freqz(1,a1)
title('Graph for r1')
figure  %2
zplane(1,a1)
title('zplane for r1')
figure  %3
plot(w1/pi,20*log10(abs(H1)))
title('Graph[db] for r1')
xlabel('Normalized Frequency (\times rad/sample)')
ylabel('Magnitude (dB)')

teta = r2/2;
a2 = [1 -2*r2*cos(teta) r2*r2];
w2 = -pi:0.01:pi;
[H2] = freqz(1,a2,w2);
figure  %4
freqz(1,a2)
title('Graph for r2')
figure  %5
zplane(1,a2)
title('zplane for r2')
figure  %6
plot(w2/pi,20*log10(abs(H2)))
title('Graph[db] for r2')
xlabel('Normalized Frequency (\times rad/sample)')
ylabel('Magnitude (dB)')

teta = r3/3;
a3 = [1 -2*r3*cos(teta) r3*r3];
w3 = -pi:0.01:pi;
[H3] = freqz(1,a3,w3);
figure  %7
freqz(1,a3)
title('Graph for r3')
figure  %8
zplane(1,a3)
title('zplane for r3')
figure  %9
plot(w3/pi,20*log10(abs(H3)))
title('Graph[db] for r3')
xlabel('Normalized Frequency (\times rad/sample)')
ylabel('Magnitude (dB)')
figure  %10
plot(w1,abs(H1),w2,abs(H2),w3,abs(H3));
legend('r1','r2','r3')
figure  %11
plot(w1/pi,20*log10(abs(H1)),w2/pi,20*log10(abs(H2)),w3/pi,20*log10(abs(H3)));
legend('r1','r2','r3')
figure  %12
freqz(1,a1,w1/pi)
hold on
freqz(1,a2,w2/pi)
hold on
freqz(1,a3,w3/pi)
legend('r1','r2','r3')
hold off
title('multiple lines ');


end