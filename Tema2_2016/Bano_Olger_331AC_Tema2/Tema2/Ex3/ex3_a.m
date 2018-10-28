function  [x]=ex3_a()
f = 1/48;
oversamplerate = 20;
fs = oversamplerate * f;
nr_per = 10;
n = 0:1/fs:nr_per*1/f;
%N = 300;
%n = 0:N-1;
%length(n)
w1 = pi/8;
w2 = pi/3;
x1 = cos(w1 .*n);
x2 = cos(w2 .*n);
x = x1 + x2;
plot(n,x);

%_____________________________________________________________________
%Y = fft(x);
%nr_Y = length(Y);
%yFs = 1;
%f = (1:nr_Y/2)/(nr_Y/2) * (yFs * 1/2);
%period = 1./f;
%index = find(period==max(period));
%perioda = period(index);
%plot(x)
%hold on
%length(period)
%length(x)
%[p,num] = seqperiod(x);
end

% 6 16 
%16*3 =48
%6*7=48