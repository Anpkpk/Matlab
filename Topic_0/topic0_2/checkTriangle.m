function checkTriangle(a, b, c)
    if (a + b > c && a + c > b && b + c > a) 
        disp('Yes');
        p = (a + b + c)/2;
        s = sqrt(p*(p - a)*(p - b)*(p - c));
        disp(s);
    else
        disp('No');
    end
end


