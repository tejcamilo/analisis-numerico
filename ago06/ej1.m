clear all; close all; clc;

f = @(x) x^3+4*x^2-10;
a=1;
b=2;


err = 100;

f(a)
f(b)


while (err > 0.02)
    c1=(a+b)/2;
    if (f(a)*f(c1) < 0)
        b = c1;
    elseif (f(b)*f(c1) < 0)
        a = c1;
    end
    c2=(a+b)/2;
    err = abs((c1-c2)/c1);
end

disp(c1)