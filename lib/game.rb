require_relative 'player'


class Game

  def attack(player)
    player.hit_points -= 10
  end

end
