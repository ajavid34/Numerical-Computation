function f = calc_f(x,n)
    f = zeros(size(x));
    for i = 0:n
        f = f + ((-1)^i)*x.^(2*i+2)./factorial(2*i + 1);
    end
end 