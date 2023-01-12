clear all
close all
clc

N = 101;
n=0:N-1;
h=0.4*sinc(0.4*(n-(N-1)/2));


T=1;				%assume a time duration of 1 sec.
t=[0:1/2000:1];
N = length(t);
s1=cos(2*pi*160*t);
s2=cos(2*pi*600*t);
s =s1+s2+randn(1,N)*sqrt(0.01);

y=conv(s,h);
subplot(211)
stem(0:length(y)-1,y);
xlim([100 200])
xlabel('n')
legend('filtered s[n]'); 
subplot(212)

stem(0:length(s1)-1,s1);
xlim([100 200])
xlabel('n')
legend('s_1[n]'); 