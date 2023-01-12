clear all
close all
clc

N = 700-1;
n = 0:N;
%generate the determinstic signal
A = 2;
w = pi/(7);
phase = 1;
sigma2 = 0.1;
s = A*cos(w*n+phase);
%noise
q = randn(1,N+1)*sqrt(sigma2);

x = s + q;

X =abs( fft(x));%the magnitude of the dft spectrum

[m,m_index] = max(X(1:500));

w_est = 2*pi*(m_index-1)/(N+1)
% plot(X)
