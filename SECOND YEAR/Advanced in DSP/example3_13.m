clear all
close all
clc

N = 50;
y(1) = 1;
for n=2:N+1;
    y(n)=0.5*y(n-1)+2;
    
end
n=[0:N];
stem(n,y);