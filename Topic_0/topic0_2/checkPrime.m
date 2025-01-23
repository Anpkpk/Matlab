function checkPrime(n)
    if (n < 4 && n > 1)
        disp('yes');
    elseif (n <= 1)
            disp('No');
    elseif (n >= 4)
        bool = true;
        for i = 2 : sqrt(n)
            if (mod(n, i) == 0) 
                bool = false;
                break;
            end
        end
        if bool == true
            disp('Yes');
        else
            disp('No');
        end
    end
