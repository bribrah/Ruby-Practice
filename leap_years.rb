start_year = gets.chomp.to_i
end_year = gets.chomp.to_i

while start_year <= end_year
    if start_year % 4 == 0 and (start_year % 100 != 0 or start_year % 400 == 0)
        puts start_year
    end
    start_year += 1
end