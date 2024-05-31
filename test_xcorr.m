rnd1 = randi([0 1], 1, 100);
rnd2 = [0,0,0,0,0,0,0,0,0,0,rnd1];
[res, lags] = xcorr(rnd1, rnd2(1:100));
stem(lags, res)