clear all
close all
clc

N = 10000;

G = randn(1,N);

mean_omega = mean(G);
variance_omega = mean(G.*G);

hist(G,10)