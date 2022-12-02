clear all; 
fs = 4000; 
Ts = 1/fs; 
t = [0:Ts:2.05]; 
f = 400; 
x=cos(2*pi*f*t); 
soundsc(x,fs)