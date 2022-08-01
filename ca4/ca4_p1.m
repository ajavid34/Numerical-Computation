clc
clear all
%% part 1
syms x;
Xi=[0,2,4,5];
Fi=[3,4,7,59];
n = 4;
L = lagrangian_interp(n,Xi);
v = 0;
for i=1:n
    v = v+ Fi(i)*L(i);
end
P(x)=vpa(v);
disp('The polynomial is:')
disp(simplify(P(x)))
disp('The value of F(1) is:')
disp(subs(simplify(P(1))))

%% part 2
% add 8 to x_i and 84 to f_i
Xi_2 = [Xi, 8];
Fi_2 = [Fi, 84];
m = n + 1;
L = lagrangian_interp(m,Xi_2);
v = 0;
for i=1:m
    v = v+ Fi_2(i)*L(i);
end
P(x)=vpa(v);
disp('The polynomial is:')
disp(simplify(P(x)))
disp('The value of F(1) is:')
disp(subs(simplify(P(1))))
