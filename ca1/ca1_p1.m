clc
clear all
%% problem 1 part 1
x = 0.75;
func = 0;
i = 0;
term = 1;
while (exp(0.75) *term) > 0.000005 
    func = func + term;
    i = i+1;
    term = x^i / factorial(i);
end
disp('Number of steps:')
disp(i)
disp('Value of function:')
sprintf('%0.5f',func)

%% problem 1 part 2
x = pi/3;
func = 0;
for i = 0:4
    term = x^i / factorial(i);
    func = func + term;
end
disp('Value of function:')
sprintf('%0.5f',func)