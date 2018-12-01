def bubble_sort(array)
    array.length.times do
        i = 0
        while i < (array.length - 1)
            if array[i] > array[i+1]
                holder = array[i]
                array[i] = array[i+1]
                array[i+1] = holder
            end
            i +=1
        end
    end
return array
end

print bubble_sort([4,3,78,2,0,2,5,8,1000,123,34,2,6])
print bubble_sort(["suh","dude","z"])
