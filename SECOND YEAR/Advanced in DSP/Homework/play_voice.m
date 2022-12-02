function A = play_voice(fA,fs)
T = 0:1/fs:0.5;% duration
A = sin(2*pi*fA*T);%fA is the frequency of note, fs is the sampling frequency
