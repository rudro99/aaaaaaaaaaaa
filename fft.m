clc,
clear;
close all;

x=input('Enter the sequence: ');
N=length(x); 
n=0:N-1;
subplot(2,2,1);
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('Input Sequence');

F=fft(x,N);

disp('Output: ');
disp(F);

subplot(2,2,2);
stem(n,F);
xlabel('n');
ylabel('x(n)');
title('FFT');

j=abs(F);
  
subplot(2,2,3);
stem(n,j);
xlabel('Time');
ylabel('Amplitude');
title('Magnitude');

h=angle(F);

subplot(2,2,4);
stem(n,h);
xlabel('Time');
ylabel('Amplitude');
title('Phase');




