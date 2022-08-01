clc 
clear all
syms x a b y;
P=(y-a*x-b)^2;
%Here we create the needed arrays and values.
xi = [0 5 10 12 15 20 35 42];
yi=[10 50 120 194 250 281 302 368];
num = 8;
disp('Differentiating:')
disp(diff(P,a))
disp(diff(P,b))
%Hence we can build our system of equations
Equation1=sum(xi.^2)*a+sum(xi)*b==sum(xi.*yi);
Equation2=sum(xi)*a+num*b==sum(yi);
disp('The System of equations:')
disp(Equation1)
disp(Equation2)
%Now we shall solve the equations.
Ans = solve([Equation1, Equation2], [a, b]);
a_Ans = Ans.a;
b_Ans = Ans.b;
% Now we shall display the polynomial
Ans_Pol=vpa(a_Ans*x+b_Ans);
disp(simplify(Ans_Pol))
fplot(Ans_Pol,[0 43])
hold on
scatter(xi,yi)
grid on
hold off