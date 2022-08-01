function output = lagrangian_interp(n,x_array)
syms x;
j=1;
i=1;
L = sym('x',[1 4]);
for k=1:n
    L(k)=1;
end
while j<=n
    while i<=n
        if(i~=j)
            L(j)=L(j).*(x-x_array(i))/(x_array(j)-x_array(i));
        end
        i=i+1;
    end
    j=j+1;
    i=i-n;
end
output = L;
end
