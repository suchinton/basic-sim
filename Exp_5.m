clc; 
clear all;
close all;

%% program 1 %%

n = 1:100;
Z = (-1).^(n+1)./(2*n-1);

%% plot a fn, axis labeling

figure;plot(n,Z,'linewidth',2);
xlabel('n'); ylabel('z');

%% sum 100 values

sZ = sum (Z)

%% program 2 %%

% plot fns %

x= 0:0.1:4;
figure;
subplot(2,2,1);
plot(x,x,'linewidth',2);
legend('x');

subplot(2,2,2);
plot(x,x.^3,'linewidth',2);
legend('x^3');

subplot(2,2,3);
plot(x,exp(x),'linewidth',2);
legend('exp(x)');

subplot(2,2,4);
plot(x,exp(x.^2),'linewidth',2);
legend('exp(x^2)');