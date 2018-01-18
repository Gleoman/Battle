require_relative 'player'


class Game

  def initialize(player = Player)
    @player = player
  end

  def attack(player)
    player.hit_points -= 10
  end

end
