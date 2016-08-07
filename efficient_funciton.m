clc;clear;close all;
% function handle
src_im_at = @(i) sprintf(['C:/Users/brbhe/Desktop/MatlbCodes/utils/', '%s.', 'jpg'], i);
add_fh = @(x, y) x+y;

% map
shapemap = containers.Map();
shapemap('aa') = 'AA';
shapemap('bb') = 'BB';
shapemap('cc') = 1;

%load .mat
load(path)