function plot_f1_f2(x,f1,f2,n)
    plot(x, f1)
    hold on;
    plot(x, f2)
    ylim([-6 2.5]);
    legendInfo = sprintf('f2 with n=%d', n);
    legend('f1',legendInfo,'Location','southwest')
    hold off
end
