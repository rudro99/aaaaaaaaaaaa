clc;
clear;
close all;
F=input('Enter the number of frequency: ');
p=input('Enter the interpolation factor: ');
N=input('Enter the length: ');
t=0:1:N-1; 
x=sin(2*3.14*F*t);
subplot(2,1,1);
stem(x);
title('original Signal');

i=interp(x,p);
subplot(2,1,2);
stem(i);
title('Interpolated Signal');
