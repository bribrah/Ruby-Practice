response = ""
byes = 0
while byes != 3
    response = gets
    if response != response.upcase
        puts "HUH? SPEAK UP SONNY"

    elsif (byes == 2)
        puts "OH BYE SONNY!"
        byes += 1
    
    elsif response == "BYE\n"
        puts "HUH?"
        byes += 1    
    else
        puts "NO, NOT SINCE #{rand(1930..1950)}"
    end
end