function encrypt(str, n)
    arr = []
    abc = 'abcdefghijklmnopqrstuvwxyz'
    for i=1:length(str)
        code = find(abc == str(i))
        modulus = mod(code+n,26)
        disp(modulus)
        arr = [arr, abc(modulus)]
    end
    disp(arr)
end

encrypt('hello',28)