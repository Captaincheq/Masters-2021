clear all
close all
clc

N = 100000;%the number of the random variables
G = randn(1,N);%the generation of standard Gaussian numbers

mean_G = mean(G) %the mean of these Gaussian numbers
var_G = mean(G.*G)%the variance of these Gaussian numbers

hist(G,10)