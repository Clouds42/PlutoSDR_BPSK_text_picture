# 文件结构

## Transceiver

样本点测距法发端，在915MHz循环发送固定数据，同时在2GHz接收数据，并存储本地。

## Transponder

样本点测距法收端，将915MHz接收到的数据不做处理直接在2GHz转发。

## bpsk\_test

自组数据帧实现基于BPSK的文本传输，文本从文件中获取，数据帧结构为`\[preamble, data_length, data_length, payload\]`，使用Correlate Access Code - Tag Stream模块提取payload，并转换回文本存储本地。

## bpsk\_succ

自组数据帧在Pluto SDR设备上实现物理信道传输文本。

## pic\_frame

使用GNU Radio的Protocol Formatter及digital接口程序化组帧传输图片。

## pic\_frame\_sdr

基于Pluto SDR实现图传。
