function tema3_2()

teta = input('enter teta: ')
r1 = input('enter r1: ')
r2 = input('enter r2: ')
r3 = input('enter r3: ')
j = sqrt(-1);
cal1 = r1*exp(j*teta)
b1 = [1 -2*r1*cos(teta) r1*r1];
w1 = -pi:0.01:pi;
[H1] = freqz(b1,1,w1);
figure  %1
freqz(b1,1)
title('Graph for r1')
figure  %2
zplane(b1,1)
title('zplane for r1')
figure  %3
plot(w1/pi,20*log10(abs(H1)))
title('Graph[db] for r1')
xlabel('Normalized Frequency (\times rad/sample)')
ylabel('Magnitude (dB)')


j = sqrt(-1);
cal2 = r2*exp(j*teta)
b2 = [1 -2*r2*cos(teta) r2*r2];
w2 = -pi:0.01:pi;
[H2] = freqz(b2,1,w2);
figure  %4
freqz(b2,1)
title('Graph for r2')
figure  %5
zplane(b2,1)
title('zplane for r2')
figure  %6
plot(w2/pi,20*log10(abs(H2)))
title('Graph[db] for r2')
xlabel('Normalized Frequency (\times rad/sample)')
ylabel('Magnitude (dB)')


j = sqrt(-1);
cal3 = r3*exp(j*teta)
b3 = [1 -2*r3*cos(teta) r3*r3];
w3 = -pi:0.01:pi;
[H3] = freqz(b3,1,w3);
figure  %7
freqz(b3,1)
title('Graph for r3')
figure  %8
zplane(b3,1)
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
freqz(b1,1,w1/pi)
hold on
freqz(b2,1,w2/pi)
hold on
freqz(b3,1,w3/pi)
legend('r1','r2','r3')
hold off
title('multiple lines ');


end