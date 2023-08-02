clc;
clear;
close all;

x1=input('Enter First Sequence: ');
subplot(3,1,1); 
stem(x1);
xlabel('Time');
ylabel('Amplitude');
title('First Sequence');

x2=input('Enter Second Sequence: ');
subplot(3,1,2);
stem(x2);
xlabel('Time');
ylabel('Amplitude');
title('Second Sequence');

z=conv(x1,x2);

disp('Output of linear convulance is: ');
disp(z);

subplot(3,1,3);
stem(z);
xlabel('Time');
ylabel('Amplitude');
title('Linear convulance Sequence');