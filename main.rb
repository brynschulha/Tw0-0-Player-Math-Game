require './question'
require './game'
require './turn'
require './player'

bob = Player.new("Bob")
joe = Player.new("Joe")
game1 = Game.new(bob, joe)
game1.start