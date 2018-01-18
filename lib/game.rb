require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize(player1 = Player, player2 = Player)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.hit_points -= 10
  end

end
