function x = tone(frequency, observation_length)
% x=tone(frequency, observation_length) is used to generate 
% a sinusoidal signal x with frequency and observation 
% length specified in the arguments. 
fs = 4000; 
Ts = 1/fs; 
t = [0:Ts:observation_length]; 
x = cos(2*pi*frequency*t);