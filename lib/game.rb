require 'player'

class Game

  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.reduce_hit_points
  end


end