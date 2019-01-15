class Game 
    attr_reader :player1, :player2
    
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def random_number
        rand(20) + 1
    end

    def start
        current_player = player1
        other_player = player2
        while (current_player.life || other_player.life) >= 1        
            a = random_number
            b = random_number
            print "#{current_player.name}: what does #{a} plus #{b} equal ? "
            answer = gets.chomp.to_i
            if answer == (a + b)
                puts "#{current_player.name} Yes! That's correct!"
                puts "#{current_player.nickname}: #{current_player.life}/3 #{other_player.nickname}: #{other_player.life}/3"
                puts "-----New Turn-----"
            else
                other_player.life -= 1
                puts "#{current_player.name} Nope! That's Incorrect"
                puts "#{current_player.nickname}: #{current_player.life}/3 #{other_player.nickname}: #{other_player.life}/3"
                puts "-----New Turn-----"
            end
            if current_player == player1
                current_player = player2
                other_player = player1
            else current_player == player2
                current_player = player1
                other_player = player2
            end
        end
        puts "#{other_player.name} won score of #{other_player.life}/3"
        puts "-----Game Over-----"
        puts "Good Bye!"
    end
end