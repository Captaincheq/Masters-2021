A = 1;
w = 0.3;
theta = 1;
N = 21;
n= 0:N-1;


x = A.*cos(w.*n + theta);
stem(n,x);