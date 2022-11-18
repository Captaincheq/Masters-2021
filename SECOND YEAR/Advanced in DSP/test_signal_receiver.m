close all
clear all
clc

%the parameters of the determinstic signal
A = 1;
omega = 0.1*pi;
phi = 0.3;

%the length of the signal
N = 100;
n = 0:N-1;

%generate the noise
sigma2=0.1;
power = 4*sigma2;
S_D = sqrt(power);%standard deviation
w = randn(1,N)*S_D;

%signal-to-noise ratio =SNR

y = A*cos(omega*n+phi)+w;

plot(n,y),hold on
xlabel('n');
ylabel('the signal in receiver y')

