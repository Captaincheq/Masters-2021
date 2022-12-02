N=5;                            %N=5;
x=[1 1 1 0 0 0 0 0 0 0];  
subplot(2,1,2);
stem([0:N-1], abs(fft(x)));
title('Magnitude Response');
subplot(2,1,2);
stem(
[0:N-1], abs(fft(x)));
title('Phase Response');

hold