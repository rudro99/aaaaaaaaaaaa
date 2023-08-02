clc;
clear;
close all;
x=input('Enter the sequence: ');
subplot(1,2,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('Input Sequence'); 

z=xcorr(x,x);

disp('Output of coorelation:');
disp(z);
subplot(1,2,2);
stem(z);
xlabel('n');
ylabel('x(n)');
title('Coorelated Sequence');