clc;
clear all;
close all;

x=input('Enter a sequence :');
N=length(x);
disp('length:'); 
disp(N);
subplot(3,3,1);
stem(x);
xlabel('n value');
ylabel('Amplitude');
title('Input signal ');
y =zeros(1,N);
for k=0:N-1
    for n=0:N-1
        y(k+1)=y(k+1)+x(n+1)*exp((-2*pi*i*n*k)/N);
    end
end
disp('Y=');
disp(y);
subplot(3,3,2);
stem(y);
xlabel('n value');
ylabel('Amplitude');
title('DFT');
mag=abs(y);
subplot(3,3,3);
stem(mag);
xlabel('n value');
ylabel('Amplitude');
title('Magnitude');

z=phase(y);
subplot(3,3,4);
stem(z);
xlabel('n value');
ylabel('Amplitude');
title('Phase');

N=length(y);
m=zeros(1,N);
for n=0:N-1
    for k=0:N-1
        m(n+1)=m(n+1)+(1/N * y(k+1)* exp((2*pi*i*n*k)/N));
    end
end
disp('m=');
disp(m);
subplot(3,3,5);
stem(m);
xlabel('n value');
ylabel('Amplitude');
title('IDFT');


