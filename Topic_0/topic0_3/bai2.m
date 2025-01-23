function bai2()
    syms x a;
    fa = (x^2 - x - 2)^20 / (x^3 - 12*x + 16)^30;
    a = limit(fa, x, 2);
    disp(a);

    fb = (x^100 - 2*x + 1)/(x^50 - 2*x + 1);
    b = limit(fb, x, 1);
    disp(b);

    fc = sqrt(x + sqrt(x + sqrt(x))) / sqrt(x + 1);
    c = limit(fc, +inf);
    disp(c);

    fd = (sqrt(x) + x^(1/3) + x^(1/4)) / sqrt(2*x + 1);
    d = limit(fd, inf);
    disp(d);

    fe = (sin(x) - sin(a)) / (x - a);
    e  = limit(fe, x, a);
    disp(e);

    ff = cos(sqrt(x))^(x);
    f = limit(ff, x, 0, 'right');
    disp(f);

end