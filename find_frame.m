clearvars;close all;

f1 = fopen('result.bin', 'rb');
data1 = fread(f1, Inf, 'float');

subplot(311)
plot(data1);ylim([-1 1]);grid on;

f2 = fopen('origin.bin', 'rb');
data2 = fread(f2, Inf, 'float');

subplot(312)
plot(data2);ylim([0 1]);grid on;

[res, lags] = xcorr(data1, data2);
subplot(313)
stem(lags, res)