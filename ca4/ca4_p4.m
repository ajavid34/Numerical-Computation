clc
clear all
%% problem 4-a
syms x 
e = 0.3;
b = 1;
a = 0;
f = 1/(x^2 + 1);
M2 = abs(eval(subs(diff(f,x,2),x,0)));
h = sqrt(e * 12 * 1/(M2*(b-a)))

%% problem 4-b
syms x
e = 0.0001;
b = 1;
a = 0;
f = 1/(x^2 + 1);
M4 = abs(eval(subs(diff(f,x,4),x,0)));
h = (e * 180 * 1/(M4*(b-a)))^0.25;
n = ceil(1/h);
if rem(n,2) == 1
    n = n + 1;
end
h = 1/n;
I= eval(h/3*(subs(f,x,0)+4*sum(subs(f,x,h:2*h:1-h))+ ...
    2*sum(subs(f,x,2*h:2*h:1-h))+subs(f,x,1)))

%% problem 4-c
x = @(t) (t+1)./2;
f = @(x) 1./(x.^2 + 1);
d = sqrt(3) / 3;
G_I = 0.5 * (f(x(-d)) + f(x(d)))