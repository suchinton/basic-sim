clc; 
clear all;
close all;

%% Rounding Functions %%
s = [-2.2 1.4 1.8]
s1 = round(s)    %Round to nearest int
s2 = floor(s)    %Round towards -ve inf
s3 = ceil(s)     %Round toward +ve inf
s4 = fix(s)      %Round towards 0

%% log and other fns %%
c =[exp(1) 12 3 2]
log(c)
log10(c)
log2(c)
log(c)./log(5)

sqrt(1000)
n=3
nthroot(1000, n) %%real nth root of real no.

%% Trig fns %%

g = 0:pi/100:5*pi;

f1 = sin(g)
figure;
plot(g./pi,f1)
xlabel('theta * pi(rad)')
ylabel('sin(theta)')

f2 = cos(g)
figure;
plot(g./pi,f2)
xlabel('theta * pi(rad)')
ylabel('cos(theta)')

f3 = tan(g)
figure;
plot(g./pi,f3)
ylim([-5,5])
xlabel('theta * pi(rad)')
ylabel('tan(theta)')

f1a = sec(g)
figure;
plot(g./pi,f1a)
ylim([-5,5])
xlabel('theta * pi(rad)')
ylabel('sec(theta)')

f2a = csc(g)
figure;
plot(g./pi,f2a)
ylim([-5,5])
xlabel('theta * pi(rad)')
ylabel('csc(theta)')

f3a = cot(g)
figure;
plot(g./pi,f3a)
ylim([-5,5])
xlabel('theta * pi(rad)')
ylabel('cot(theta)')