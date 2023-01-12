rng default

n=[0:1024];
N = (length(x)+1)/2;

fs = 4000;
t = 0:1/Fs:2.96;
x = cos(2*pi*t*10e3) + randn(size(t));

indxs = find(f>1.2e3 & f<1.3e3);
X = goertzel(x,indxs);
 
Ts = 1/fs; 
t = [0:Ts:2.05];  
x=cos(2*pi*f*t); 
soundsc(x,fs)