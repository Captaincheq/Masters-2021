clear all; 
fs = 4000; 
Ts = 1/fs; 
t = [0:Ts:2]; 
f1 = 400; 
f2 = 600; 
x=[cos(2*pi*f1*t), cos(2*pi*f2*t)]; 
soundsc(x,fs); 