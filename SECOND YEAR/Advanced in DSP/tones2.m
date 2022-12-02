clear all; 
x=[]; 
fs = 4000; 
Ts = 1/fs; 
t = [0:Ts:0.0205]; 
f = 400; 
for i=1:100 
 x=[x,cos(2*pi*f*t)]; 
end 
soundsc(x,fs)