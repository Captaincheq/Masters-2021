clear all
close all
clc

x=[0,0,ones(1,99)];
a = [1 -0.6,-0.5];
b=[1];
y = filter(b,a,x);
stem(0:length(y)-1,y,'r'),hold on



% N = 100;
% y(1)=0.6;%corresponds to y[0]
% y(2)= 0.86;%y[1]
% y(3)=1.816;
% for n=4:N+1
%     y(n)=0.5*y(n-2)+0.6*y(n-1)+1;
% end
% 
% n=[0:N];
% stem(n,y)

% x=ones(1,51);
% a = [1,-0.5];
% b=[1,1];
% y = filter(b,a,x);
% stem(0:length(y)-1,y)
