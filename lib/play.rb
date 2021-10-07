class Play
  attr_reader :cur_player

  def initialize(player_1, player_2)
    @cur_player = player_1
    @next_player = player_2
  end

  def attack
    @next_player.reduce_points_by(10)
    return "#{@next_player.name}'s HP are now reduced."
  end
end