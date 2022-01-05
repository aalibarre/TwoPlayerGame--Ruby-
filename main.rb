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
