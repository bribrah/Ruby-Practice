def substring(str,dictionary)
    i = 0 
    return_hash = Hash.new
    str_array = str.split(" ")
    for str_word in str_array do
        i = 0
        str_word = str_word.downcase
        while i <str.length
            x = i
            while x < str_word.length
                sub_str = str_word[i..x]
                for word in dictionary do
                    if word==sub_str
                        if return_hash[word] == nil
                            return_hash[word] = 1
                        else
                            return_hash[word] += 1
                        end
                    end
                end
                x+= 1
            end
            i += 1
        end
    end
    return return_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substring("Below",dictionary)
puts
puts substring("Howdy partner, sit down!, How's it going?",dictionary)
puts
puts substring("below down go going", dictionary)
