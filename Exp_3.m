clc;
clearvars;
disp("3.1 Generate vector,evalute sum and running sum, plot them");
sm = [1 8 3 9 0 1]

disp("Sum");
sm1 = sum(sm)
sm2 = cumsum(sm)

disp("Graph");
figure;
plot(sm);
ylabel('sm')

figure;
plot(sm2);
ylabel('cumsum(sm)')

disp("Multiple graphs on same figure");
figure;
plot(1:6,sm,1:6,sm2);
legend('x','cumsum(sm)')


suchi1 = rand
suchi2 = rand(3)
suchi3 = rand(1,5)

suchi1a = randn
suchi2a = randn(3)
suchi3a = randn(1,5)

suchi4 = rand(1,1000);
suchi4a = randn(1,1000);

figure;
plot(suchi4);
ylabel('rand()');
figure;
plot(suchi4a);
ylabel('randn()');

figure;
hist(suchi4);
ylabel('hist rand()')
figure;
hist(suchi4a);
ylabel('hist randn()')
