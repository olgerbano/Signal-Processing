function [] = ex4_d()

s = auread ('sunet_s');
a = auread ('sunet_a');
i = auread ('sunet_i');
sl = s(300:500);
al = a(300:500);
il = i(300:500);

sx=xcorr(sl,120,'biased');
kminimum_sx = find(sx==min(sx))
period_sx = mean(diff(sx))
ax=xcorr(al,120,'biased');
kminimum_ax = find(ax==min(ax))
period_ax = mean(diff(ax))
ix=xcorr(il,120,'biased');
kminimum_ix = find(ix==min(ix))
period_ix = mean(diff(ix))

figure(1)
subplot(1,2,1);
title('sunet_s')
plot(sl);
subplot(1,2,2);
plot(sx,'k');

figure(2)
subplot(1,2,1);
title('sunet_a')
plot(al);
subplot(1,2,2);
plot(ax,'k');

figure(3)
subplot(1,2,1);
title('sunet_i')
plot(il);
subplot(1,2,2);
plot(ix,'k');



end

