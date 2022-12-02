clear all
close all
clc

n = -10:30;
x = cos(pi*n/4);
T = 1/1000;
for l = 1:2001
    t = (l-1)*T/100;
    h = sinc((t-n.*T)./T);
    xr(l) = x*h.';
end

O1 = 250*pi;
O2 = 2250*pi;
dt = 1/100000;
t = 0:dt:0.02;

x1=cos(O1.*t);
x2 = cos(O2.*t);

plot(t,xr,'ms'), hold on
plot(t,x1,'r'),hold on
plot(t,x2,'b.-'),hold on
legend('reconstructed','x1','x2')
xlabel('t');
ylabel('signals')