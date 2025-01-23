function arctan = myAtan(x)
    disp('nhap |x| <= 1');
    tmp = 0;
    arctan = x - (x^3)/3;
    n = 3;
    while(abs(tmp) < 1e-9)
        tmp = (-1)^(n - 1) * x^(2*n - 1) / (2*n - 1); 
        arctan = arctan + tmp;
        n = n + 1;
    end
end