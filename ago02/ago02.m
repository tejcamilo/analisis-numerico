function sumar(x)
    suma = 0;
    str_num = num2str(x);    % Convert number to string
    digits = double(str_num) - '0'; % Convert string to numeric array
    for i=1:length(digits)
        suma = suma + digits(i);
    end
    disp(suma)
end
%sumar(3433)


function fibonacci(x)
    arr = [0,1];
    for i=2:x
        arr = [arr,(arr(i)+arr(i-1))];
    end
    disp(arr)
end

%fibonacci(11)

function isFibonacci(n)
    if n < 0
        disp('false');
    end
    
    % Compute the two potential perfect squares
    x1 = 5*n^2 + 4;
    x2 = 5*n^2 - 4;
    
    function result = isPerfectSquare(x)
    % Check if x is a perfect square
        s = sqrt(x);
        result = s == floor(s);
    end

    % Check if either x1 or x2 is a perfect square
    if isPerfectSquare(x1) || isPerfectSquare(x2)
        disp('true')
    else
        disp('false')
    end
end

isFibonacci(6)
