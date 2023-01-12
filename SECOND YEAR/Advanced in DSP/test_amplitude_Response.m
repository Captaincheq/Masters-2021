clear all
close all
clc

dw = 0.01*pi;
w = -pi:dw:pi;
N = 10;

% sinc(x) = sin(pi*x)/(pi*x);

Hr = sinc(w*N/2/pi).*N./sinc(w/2/pi);%amplitude response
AP_H = -(N-1)/2*w;

H_M = abs(Hr);%magnitude response
MP_H = -(N-1)/2*w+angle(Hr);

figure
subplot(221)
plot(w/pi,Hr),hold on
xlabel('w/\pi')
ylabel('Amplitude response')
subplot(222)
plot(w/pi,AP_H),hold on
xlabel('w/\pi')
ylabel('The phase of amplitude response')
subplot(223)
plot(w/pi,H_M),hold on
xlabel('w/\pi')
ylabel('Magnitude response')
subplot(224)
plot(w/pi,MP_H),hold on
xlabel('w/\pi')
ylabel('The phase of magnitude response')
