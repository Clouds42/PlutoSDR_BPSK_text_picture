clearvars;close all;

%% The original signal
f1 = fopen('org.bin', 'rb');
data1 = fread(f1, Inf, 'float');

subplot(211);
p1 = plot(data1(21000:21100));xlim([0 100]);ylim([0 1]);grid on;title('origin');
p1.Marker = 'o';

%% The received signal
f2 = fopen('test.bin', 'rb');
data2 = fread(f2, Inf, 'float');

subplot(212);
p2 = plot(data2(21000:21100));xlim([0 100]);ylim([0 1]);grid on;title('test');
p2 .Marker = 'o';