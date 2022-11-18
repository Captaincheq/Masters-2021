clear all
close all
clc

O1 = 250*pi;
O2= 2250*pi;
Ts=1/100000;
t=0:Ts:0.02;
x1=cos(O1.*t);
x2=cos(O2.*t);

plot(t,x1, 'r'),hold on;
plot(t,x2, 'b.-'),hold on;
legend('x1','x2');
xlabel('t');
ylabel('amplitude')
