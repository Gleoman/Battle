require_relative 'player'

class Game

  attr_reader :player1, :player2, :turn

  def initialize(player1 = Player, player2 = Player)
    @player1 = player1
    @player2 = player2
    @turn = @player1.name
  end

  def attack(player)
    player.hit_points -= 10
  end

  def change_turn
    @turn = @player1.name ? @turn = @player2.name : @turn = @player1.name
  end

end
