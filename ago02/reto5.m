function subStr(x)
    arr = x
    counter = []
    disp(arr)
    while ~isempty(arr)
        for i=1:length(arr)
            if mod(arr(i),2) == 0
                arr(i) = []
                total = 1
                if mod(arr(i),2) == 0
                    total = total+1
                    arr(j) = []
                else
                    counter = [counter, total]
                end
                break
            else 
                if mod(arr(i),2) != 0
                    arr(i) = []
                    total = 1
                    if mod(arr(i),2) != 0
                        total = total+1
                        arr(j) = []
                    else
                        counter = [counter, total]
                    end
                    break
                end
            end 
        end
    end
        
end

subStr([2,4,6,3,1,6])