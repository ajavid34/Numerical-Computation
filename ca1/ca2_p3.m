clc
clear all
syms x y z;
x0 = 1;
y0 = 2;
z0 = 3;
r = @(x,y,z) sqrt(x^2 + y^2 + z^2);
diff_r(x,y,z) = diff(r,x) + diff(r,y) + diff(r,z);
error = 1 / eval(diff_r(x0,y0,z0));
disp('Maximum value for e:')
disp(error)