class Player

DEFAULT_HIT_POINT = 45
  attr_reader :name, :hit_point

  def initialize(name, hit_point=DEFAULT_HIT_POINT)
    @name = name
    @hit_point = DEFAULT_HIT_POINT
  end

  def reduce_point
    @hit_point -= 10
  end
end
