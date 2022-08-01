clc
clear all
%% problem 3
syms x 
a = 4*pi*8.9*10^9 * 2/(4*10^5*2*10^5);
f(x) = x - a*(sqrt(x^2+1/25))^3;
x0 = 0.5;
x1 = 1;
N = 8;
for i = 1:N
    fxn1 = x1 - (eval(f(x1))*(x1 - x0))/(eval(f(x1)) - eval(f(x0)));
    x0 = x1;
    x1 = fxn1;
end
fprintf('\nRoot is: %f\n', x1);