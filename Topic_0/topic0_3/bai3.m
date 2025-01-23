function bai3()
    syms x y;
    fa = (x^3 + y^3) / (x^2 + y^2);
    fa_dx = diff(fa, 'x');
    syms x y;       % bo di bi loi ???
    fa_dy = diff(fa, 'y');
    disp('a, ');
    disp(fa_dx);
    disp(fa_dy);
    
    fb = log((sqrt(x^2 + y^2) - x) / (sqrt(x^2 + y^2) + x));
    fb_dx = diff(fb, 'x');
    fb_dy = diff(fb, 'y');
    disp('b, ');
    disp(fb_dx);
    disp(fb_dy);

    fc = exp(x*y)*cos(x)*sin(y);
    fc_dx = diff(fc, 'x');
    fc_dy = diff(fc, 'y');
    disp('c, ');
    disp(fc_dx);
    disp(fc_dy);
end


