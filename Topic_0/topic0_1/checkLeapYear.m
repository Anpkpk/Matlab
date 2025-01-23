function checkLeapYear(year) 
    if (mod(year, 400) == 0) || (mod(year, 4) == 0 && mod(year, 100) ~= 0)
        disp("Yes")
    else
        disp("No");
    end
end