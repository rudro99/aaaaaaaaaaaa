clc;
clear all;
close all;

t=0:0.01:1;
a=2;
b=a*sin(2*pi*2*t); 
subplot(3,3,1);
stem(t,b);
xlabel('Time');
ylabel('Amplitude');
title('Sine Wave');

t=0:0.01:1;
a=2;
b=a*cos(2*pi*2*t);
subplot(3,3,2);
stem(t,b);
xlabel('Time');
ylabel('Amplitude');
title('cos Wave');

n=-2:5;
b=[zeros(1,2),ones(1,1),zeros(1,5)];
subplot(3,3,3);
stem(n,b);
xlabel('Time');
ylabel('Amplitude');
title('unit Wave');

n=-2:5;
b=[zeros(1,2),ones(1,6)];
subplot(3,3,4);
stem(n,b);
xlabel('Time');
ylabel('Amplitude');
title('unit step Wave');

t=0:0.01:1;
a=2;
b=a*square(2*pi*2*t);
subplot(3,3,8);
stem(t,b);
xlabel('Time');
ylabel('Amplitude');
title('Square Wave');

t=0:0.01:1;
a=2;
b=a*exp(2*pi*2*t);
subplot(3,3,6);
stem(t,b);
xlabel('Time');
ylabel('Amplitude');
title('Exponential Wave');
