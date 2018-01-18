
class Player

  attr_reader :name
  attr_accessor :hit_points

  HIT_POINTS = 100

  def initialize(name, hit_points = HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  # def attack(player)
  #   player.hit_points -= 10
  # end

end
