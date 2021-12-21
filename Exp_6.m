clc; 
clear all;
close all;

T = 1;
f0 = 10;
Fs = 1000;

t = 0:1/Fs:T;
s1 = sin(2*pi*f0*t);
s2 = cos(2*pi*f0*t);

%% Multiple Plots 

figure;
plot(t,s1,t,s2);
title('Sine,Cosine Wave');
xlabel('Time(s)');
ylabel('Amplitude');
legend('sin','cos');

s1a = sin(2*pi*f0*2*t);
s1b = sin(2*pi*f0*4*t);
s1c = sin(2*pi*f0*0.25*t);
s1d = sin(2*pi*f0*0.0625*t);

figure;

subplot(2,2,1);
plot(t,s1a);
title('sin(2\pif_0*2t)');

subplot(2,2,2);
plot(t,s1b);
title('sin(2\pif_0*4t)');

subplot(2,2,3);
plot(t,s1c);
title('sin(2\pif_0*0.25t)');

subplot(2,2,4);
plot(t,s1d);
title('sin(2\pif_0*0.0625t)');