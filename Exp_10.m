clc;
clear all;

%% 2D Parametric Plots: ezplot %%

f1 = @(x)x.^2-2;
figure;
ezplot(f1,[-2,2],100);
grid on;
xlabel('a');
xlim([-2 2]);
ylim([-2 2]);

%% 2D Parametric Plots: ezplot (self)%%

f2 = @(t)cos(t);
figure;
ezplot(f2,[0 6*pi],100);
grid on;
xlabel('t');
ylabel('cos(t)');

%% 3D Parametric Plots: ezplot3 %%

fx = @(t)cos(t);
fy = @(t)sin(t);
fz = @(t)t;
figure;
ezplot3(fx,fy ,fz,[0,6*pi],100);
grid on;
xlabel('cos(t)');
ylabel('sin(t)');
zlabel('t');

%% Polygon with Vertices %%

figure;
X = [0 1 1 0]
Y = [0 0 1 1]
patch(X,Y,'red')

%% DIY: Triangle %%

figure;
t1 = [0 1 0 0]
t2 = [0 0 1 1]
patch(t1,t2,'red')
% drawPolygon([0,0; 2,0; 1,2]);
% xlim([-0.1 2.1]);
% ylim([-0.1 2.1]);

%% Surface Plot %%

y1 = -2*pi:pi/10:2*pi;
y2 = -2*pi:pi/10:2*pi;
[X,Y] = meshgrid(y1,y2);
R = sqrt(X.^2+Y.^2);
clear Z;
Z = sin(R)./R;

figure;
surfc(Z);
xlabel('x');
ylabel('y');
zlabel('z');

figure;
contour(Z);
xlabel('x');
ylabel('y');
zlabel('z');
colorbar;

%% Pie Plot %%
z1 = [1,2,4,1,2];
figure;
pie(z1)

%% Bar Plot %%
figure()
bar(z1)

%%  Histogram %%
z2 = [1,2;4,1;2,0.5];
figure;
bar(z2)

