A = 1;
N= 100;
n = 0:N-1,
omega =0.1*pi;
phi = 0.3;

sigma2 = 0.1;
power = 4*sigma2;
S_D= sqrt(power);
w = randn(1,N)*S_D;


y = A*cos(omega*n + phi)+w;



plot(n,y)
