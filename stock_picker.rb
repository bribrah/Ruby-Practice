def stock_picker(array)
    i=0
    highest_day = 0
    lowest_day = 10000000000000000000
    difference = 0
    while i < array.length
        num = array[i]
        x = i
        while x < array.length
            num2 = array[x]
            if num2 - num > difference
                difference = num2 - num;
                lowest_day = i
                highest_day = x
            end
            x+= 1
        end
        i += 1
    end
    return "buy on day #{lowest_day + 1} and sell on #{highest_day + 1} for a profit of #{difference}"
end

puts stock_picker([17,3,6,9,15,8,6,1,0])
puts
puts stock_picker([20,15,4,5,100,423,123,0])
puts 
puts stock_picker([10000000000000000,1,30,240,30,1,3,4,5,6,78,100000,120])