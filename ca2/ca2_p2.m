clc
clear all
%% problem 2
syms t;
x = t^3 / 3 + cos(t/4) - t / 2;
x_d = diff(x);
gt(t) = 0.5*sqrt(sin(t/4)+2);
a = 0;
b = 1;
t0 = (a + b) / 2;
N = 50;
for i = 1 : N
    t0 = eval(gt(t0));
end
fprintf('\nRoot is: %f\n', t0);