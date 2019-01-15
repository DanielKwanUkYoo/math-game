require './player'
require './game'

player_1 = Player.new("Player 1", "P1")
player_2 = Player.new("Player 2", "P2")
game = Game.new(player_1, player_2)
game.start