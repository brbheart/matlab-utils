clc;clear;close all;
fid = fopen('1test.txt');
formatSpec = '%s';
N = 4;
C_text = textscan(fid, formatSpec, N, 'Delimiter', '|');
C_data1 = textscan(fid, '%d %f %f %f', 1, 'CollectOutput', 1);
C_data2 = textscan(fid, '%d %f %f %f', 2, 'CollectOutput', 1);
fclose(fid);