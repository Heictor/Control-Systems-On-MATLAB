%The command tf() creates continuous or discrete time transfer functions
%in the frequency domain
%tf(numerator Vector, denominator Vector)

tf([1 0 1],[1 1 1])
H = tf([4 0 1 3 4],[5 0 9])

%feedback() calculates the transfer function equivalent to the feedback 
%of a transfer function by another
%feddback(main function, feedback function)

X = tf([1 0 1],[1 1 1])
F = feedback(X, 1)

figure(1)
%step(tf) plots the unit step response of a transfer function
step(X)
%stepinfo() provides features to the step response
stepinfo(X)
axis([0 10 -0.5 1.5]);

figure(2)
%lsim(tf, input vector, time vector)plots the response to a generic input 
%signal of a transfer function
H = tf([2],[1 2 1])
[u, t] = gensig('square', 2, 10, 0.01);
lsim(H, u, t)
axis([0 10 -0.5 1.5]);