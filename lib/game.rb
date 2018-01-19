require_relative 'player'

class Game

  attr_reader :player1, :player2, :turn, :attacking_player, :defending_player

  def initialize(player1 = Player, player2 = Player)
    @player1 = player1
    @player2 = player2
    @attacking_player = @player1
    @defending_player = @player2
  end

  def attack(player)
    player.hit_points -= 10
    # change_turn
  end

  def change_turn
    if @attacking_player == @player1
      @attacking_player = @player2
      @defending_player = @player1
    else
      @attacking_player = @player1
      @defending_player = @player2
    end
  end

end
