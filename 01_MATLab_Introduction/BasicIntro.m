%Commentary

%Vector
V1 = 1:10
V2 = 1:2:10
V3 = linspace(1,10,100)
V4 = [1 2 3 4]

%Matrix
M1 = [123;456;789]
M2 = [linspace(1,10,100);linspace(1,10,100);linspace(1,10,100)]

%Plot
x = linspace(0,2*pi)
y = sin(x)
plot(x,y,'red o','linewidth',2)
title('Sin Function')
axis([0 6 -1 1])
xlabel('t')
ylabel('sen(t)')
legend('sen(t)')
grid