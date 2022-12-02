N=200;
y=0;
u=[1,1,1,1,1];
k=-N:1:N-1;

for n= 10
    y=y+u.*exp(-j*(2*pi/N).*cos(k*n));
end

w=(2*pi.*k)/N;
plot(w,abs(y))