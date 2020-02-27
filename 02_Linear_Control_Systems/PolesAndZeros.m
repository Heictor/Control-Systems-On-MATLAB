%Zeros: Roots of numerator.
%Poles: Roots of denominator.

%residue() calculates the expansion in partial fractions
num = [2 1];
den = [1 3 2];
%expansion in partial fractions
[r,p,k] = residue(num, den)
%h(t)= -e^(-t)+3*e^(-2*t), t>=0

%tf2zp()converts the numerator-denominator form to the poles and zeros form
[z, p, k] = tf2zp(num,den)

%pzmap() plots the poles and zeros of a transfer function
figure(1)
H = tf([2 1],[1 3 2])
pzmap(H)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
num = [2 5 3 6];
den = [1 6 11 6];
H = tf(num,den)
pzmap(H)
[z, p, k] = tf2zp(num,den)