clc
clear all
%% problem 1 part a
syms x;

% Input Section
y = tan(x) + tanh(x); 
a = input('Enter a: ');
b = input('Enter b: ');
e = input('Enter n: ');

% Finding Functional Value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));

a0 = a;
b0 = b;

% Implementing Bisection Method
i = 0;
if fa*fb > 0 
    disp('Given initial values do not bracket the root.');
else
    c = (a+b)/2;
    fc = eval(subs(y,x,c));
    while i <= e
        if fa*fc < 0
            b = c;
            fb = fc;
        elseif fa*fc > 0
            a =c;
            fa = fc;
        else
            break;
        end
        c = (a+b)/2;
        fc = eval(subs(y,x,c));
        i = i + 1;
    end
    fprintf('\nfor a: %f and b: %f and n: %d\n', a0, b0,e);
    fprintf('\nRoot is: %f\n', c);
end

%% problem 1 part b
syms x;

y = tan(x) + tanh(x); 
fplot(y)