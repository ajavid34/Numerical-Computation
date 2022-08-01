clc
clear all
syms x;
m = 4;
f = (pi + x)*cos(2*x)*sin(x);
X=[0,pi/4,pi/3,pi/2];

Farr = eval(subs(f,x,X(1:m)));

L = lagrangian_interp(m,X);
v = 0;
for i=1:m
    v = v+ Farr(i)*L(i);
end
P(x)=vpa(v);
hold on
grid on
xx = 0:0.1:pi;
ff = eval(subs(f,x,xx));
pp = eval(subs(P,x,xx));
plot(xx,ff,'b')
plot(xx,pp,'r')
hold off
legend('Manual Interpolation','Orginal Function')
disp('The polynomial is:')
disp(simplify(P(x)))