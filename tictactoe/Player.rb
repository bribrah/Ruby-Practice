class Game
attr_accessor :board_row1,:board_row2,:board_row3,:game_won

    def initialize
        @board_row1 = ["-","-","-"]
        @board_row2 = ["-","-","-"]
        @board_row3 = ["-","-","-"]
        @game_won  = false
    end


    def board
        print "|"
        for column in @board_row1 do
            print column + "|"
        end
        puts
        print "|"
        for column in @board_row2 do
            print column + "|"
        end
        puts
        print "|"
        for column in @board_row3 do
            print column + "|"
        end
        puts
    end
    

    def boardUpdate (player,row,column)
        if row == 1
            if @board_row1[column - 1] == "-"
                @board_row1[column - 1] = player.symbol
            else
                false
            end
        elsif row == 2
            if @board_row2[column - 1] == "-"
                @board_row2[column - 1] = player.symbol
            else
                 false
            end
        else
            if @board_row3[column - 1] == "-"
                @board_row3[column - 1] = player.symbol
            else
                false
            end
        end
    end

    def playerChoice(player)
            board
            print "#{player.name} please make your ROW choice: "
            row = gets.chomp.to_i
            while row != 1 && row != 2 && row != 3
                print "#{player.name} please choose either 1, 2, or 3: "
                row = gets.chomp.to_i
            end
            print "#{player.name} please make your COLUMN choice: "
            column = gets.chomp.to_i
            while column != 1 && column != 2 && column != 3
                print "Please choose either 1, 2, or 3: "
                column = gets.chomp.to_i
            end
            if boardUpdate(player,row,column) == false
                puts
                puts "ERROR: That spot already has been chosen!"
                puts "Please make another choice"
                playerChoice(player)
            else
                puts
                boardUpdate(player,row,column)
            end
        end



        
end

class Player<Game
    attr_accessor :symbol, :name
    def initialize(symbol, name)
        @symbol = symbol
        @name = name
    end
end


game = Game.new

print "Player 1 please enter your name: "
name1 = gets.chomp
print "Player1 please choose a 1 character symbol to represent your choices: "
symbol1 = gets.chomp
while symbol1.length != 1
    puts "must be 1 character in length!"
    symbol1 = gets.chomp
end
player1 = Player.new(symbol1, name1)

print "Player 2 please enter your name: "
name2 = gets.chomp
print "Player2 please choose a 1 character symbol to represent your choices: "
symbol2 = gets.chomp
while symbol2.length != 1
    puts "Must be 1 character in Length!"
    symbol2 = gets.chomp
end
player2 = Player.new(symbol2,name2)

while game.game_won == false
    game.playerChoice(player1)
    game.playerChoice(player2)
end


