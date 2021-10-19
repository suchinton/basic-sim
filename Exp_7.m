clc; 
clear all;
close all;

%% First order ordinary diff eqn %%

diffeqn1 = @(t,y)[5];

tspan = [0,2];
y0 = 2;
[t,y] = ode45(diffeqn1, tspan, y0);
figure;
plot(t,y,'linewidth',2);
xlabel('Time');
ylabel('y')
title('Sol of dy/dt =5');

%% Second order ordinary diff eqn %%

diffeqn2 = @(t,y)[4; 0];

tspan = [0,2];
y0 = [3 4];
[t,y] = ode45(diffeqn2, tspan, y0);
figure;
plot(t,y,'linewidth',2);
xlabel('Time');
ylabel('y')
title('Sol of d^2y/dt^2 =0')
legend('y_1','y_2');

%% Third order ordinary diff eqn %%

diffeqn3 = @(t,y)[6-t+4; 6; 0];

tspan = [0,2];
y0 = [3 4 6];
[t,y] = ode45(diffeqn3, tspan, y0);
figure;
plot(t,y,'linewidth',2);
xlabel('Time');
ylabel('y')
title('Sol of d^3y/dt^3 =0')
legend('y_1','y_2', 'y_3');


