class Game

attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2

  end

  def attack_player(player)
    player.reduce_point
  end

  def lose?
  	true if @player1.hit_point <=0 || @player2.hit_point <=0
  end

end
