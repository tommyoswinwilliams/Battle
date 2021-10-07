class Player
  attr_reader :name, :hp
  # attr_accessor :hp
  DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def reduce_points_by(n)
    @hp -= 10
  end

end