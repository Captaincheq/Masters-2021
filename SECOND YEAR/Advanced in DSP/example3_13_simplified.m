x = ones(1,51);
a=[1,-0.5];
b=[1,1];
y=filter(b,a,x);
stem(0:length(y)-1,y)