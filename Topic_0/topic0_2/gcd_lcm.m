function v = gcd_lcm(a, b)
    lcm = a*b;
    if (a*b == 0)
        gcd = a + b;
    end
    while (b ~= 0)
        tmp = mod(a, b);
        a = b;
        b = tmp; 
    end
    gcd = a;
    lcm = lcm / gcd;    v = [gcd, lcm];
end