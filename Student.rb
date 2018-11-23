def englishNumber number
    if number < 0
        puts "number cant be negative"
    end
    if number == 0
        return "zero"
    end

    num_string = ""

    onesPlace = ['one',     'two',       'three',    'four',     'five',
        'six',     'seven',     'eight',    'nine']
tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
        'sixty',   'seventy',   'eighty',   'ninety']
teens = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
        'sixteen', 'seventeen', 'eighteen', 'nineteen']

        numLeft = number
        currentPlace = number / 100
        numLeft = number = currentPlace*100
        

