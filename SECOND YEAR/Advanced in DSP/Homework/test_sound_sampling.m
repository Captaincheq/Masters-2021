clear all
close all
clc

fA = 440;
fB = 493.88;
fC = 554.37;
fD = 587.33;
fE = 659.26;
fF = 739.99;
fs = 8000;
A = play_voice(fA,fs);
B = play_voice(fB,fs);
C = play_voice(fC,fs);
D = play_voice(fD,fs);
E = play_voice(fE,fs);
F = play_voice(fF,fs);

Voice = [A A E E F F E E D D C C B B A A];

sound(Voice,fs)