def cipher(str,num)
    str_array = str.split("")
    ciphered_str = ""
    for char in str_array do
        if /[\w]/.match(char)
            num.times do
                char = char.next
            end
        end
        ciphered_str += char[-1]
    end
    return ciphered_str
end

puts cipher("My name is Brian",3)
        