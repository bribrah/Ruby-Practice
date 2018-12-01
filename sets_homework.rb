set = [0,1,2,3,4,5,6,7,8]
relation_set = Array.new
for num in set
    for num2 in set
        if (num**2 -  num2 **2) %5 == 0
            puts "#{num},#{num2}"
        end
    end
end
