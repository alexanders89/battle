class Game

  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @on_turn = player_1
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def on_turn
    @on_turn
  end

  def not_on_turn
    @players.select { |player| player != @on_turn }.first
  end

  def attack(player)
    player.reduce_hit_points
  end

end
