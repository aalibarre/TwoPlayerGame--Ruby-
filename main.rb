require "./game"
require "./players"
require "./questions"

# Player Setup 
print "Weclome Player 1! Please enter your name: "
name1 = gets.chomp.to_s
print "Weclome Player 2! Please enter your name: "
name2 = gets.chomp.to_s

player1 = Player.new(name1)
player2 = Player.new(name2)

# Current Player
game = Game.new(player1, player2)
while game.players[0].life > 0 game.players[1].life > 0 do 

    # Question Generator  
    puts "--- New Turn ---"
    question = Question.new
    print "#{game.current_player.name}: #{question.make_question}"
    answer = question.answer
  
    # Input from player 
    input = gets.chomp.to_i
  
    # Verify Answer 
    if (input != answer)
      game.subtract_life
    end
  
    game.status_num_of_lives
  
    #Change Turn 
    game.change_player
  
  
  end 
  