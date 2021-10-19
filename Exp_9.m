clc; 
clear all;
close all;

%% Example of for-loop (Part A)
%%
%%A = [1,3,8,-2]
%%sumA = 0;
%%for k=1;length(A)
%%    sumA = sumA +A(k)
%%end

%% Generate sine wave of 100 Hz (Part B)

T = 1;
f = 10;
Fs = 1000;
t = 0:1/Fs:T;
%gsl = sin(2*pi*f*t);
plot (t,gsl)

%% Generate a square wave (Part C)
gssq = (4*s1)./pi; %% fundamental
for k=3:2:99
    gssq = gssq+4*sin(2*pi*k*f*t)./(k*pi);
end

figure;
plot(t,gsl,t,gssq);
xlabel('t');
ylabel('Amplitude');
legstr = legend('Sine Wave','Square Wave');
legend(legstr,'orientation','horizontal','location','southoutside');
ylim[-1.2 1.2]
