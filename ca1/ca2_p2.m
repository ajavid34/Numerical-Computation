clc
clear all
%% problem 2 part 1
x = 2:0.001:6;
f1 = x.*sin(x);
f2_1 = calc_f(x,4);
f2_2 = calc_f(x,6);
f2_3 = calc_f(x,8);
plot_f1_f2(x,f1,f2_1,4)
plot_f1_f2(x,f1,f2_2,6)
plot_f1_f2(x,f1,f2_3,8)

%% problem 2 part 2
x = 2:0.001:6;
f1 = x.*sin(x);
f2_1 = calc_f(x,4);
f2_2 = calc_f(x,6);
f2_3 = calc_f(x,8);
f_diff_1 = abs(f1 - f2_1);
f_diff_2 = abs(f1 - f2_2);
f_diff_3 = abs(f1 - f2_3);
plot(x, f_diff_1)
hold on
plot(x, f_diff_2)
plot(x, f_diff_3)
ylim([-1 2]);
legend('diffrent f1 and f2 with n=4','diffrent f1 and f2 with n=6', ...
    'diffrent f1 and f2 with n=8','Location','southwest')
hold off