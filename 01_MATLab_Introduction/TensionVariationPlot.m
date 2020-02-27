R = 1e3;
C = 4.7e-6;
tau = R*C;
Vf = 5;
Vt = 4.9;

tm = -tau*log(1 - Vt/Vf) % Finding value of tm

T = linspace(0,tm,10); % Linearly spaced vector from 0 to tm
%Calculating V for each instant of time:
for i = 1 : 10
    V(i) = Vf * (1 - exp(- T(i)/tau));
end
plot(T, V)
xlabel('time (s)')
ylabel('tension (V)')
axis([0 0.0184 0 5])
grid
title('tension over time')