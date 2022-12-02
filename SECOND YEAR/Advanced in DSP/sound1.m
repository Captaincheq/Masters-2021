clear all
close all
clc


fA = 440;
fs = 8000;
T = 0:1/fs:0.5;
A = sin(2*pi*fA*T);
sound(A,fs);

%A=sin(2*pi*440*(0:1/8000:0.5));
%sound(A,8000)