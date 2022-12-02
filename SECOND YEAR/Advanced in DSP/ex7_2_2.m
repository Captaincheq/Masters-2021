N=10;                            %N=5;
x=[1 1 1 0 0 0 0 0 0 0];              
k=-N:2*N;                       %plot for 3 periods
Xm=abs(1+2.*cos(2*pi.*k/N));    %magnitude computation
Xa=angle(exp(-2*j*pi.*k/N).*(1+2.*cos(2*pi.*k/N)));
                                %phase computation
w=-2*pi:0.01*pi:4*pi;           %separation frequency point separation is 0.01pi
dtft = exp(-j.*w).*(1+2*cos(w)); %define DTFT function
subplot(2,1,1)
Mag = abs(dtft);                %compute magnitude                     
plot(w./pi,Mag);                %plot magnitude
hold
stem(2*k/N,Xm);
title('Magnitude Response');
xlabel('\omega/\pi');           %x-axis is from 0 to 2
hold
subplot(2,1,2)
Pha = angle(dtft);              %compute phase
plot(w./pi,Pha);                %plot phase
hold
stem(2*k/N,Xa);
title('Phase Response');	  
xlabel('\omega/\pi');
axis([-2 4 -2.05 2.05])
hold