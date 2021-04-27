require './player'

class Game
  attr_reader :lives, :player, :current_player

  def initialize(p1, p2)
    @player = [p1, p2]
    @current_index = 0
    @current_player = @player[current_index]
  end

  def minus_life
    @current_player.life -= 1
    if @current_player.life == 0
      puts "#{@current_player.name} wins with a score of #{lives}/3!"
      puts "----- GAME OVER -----"
    end
  end

  def lives
    puts "P1: #{player[0].life}/3 P2: #{player[1].life}/3"
  end

  def change_player
    if @current_player = player[0]
      @current_player = player[1]
    else
      @current_player = player[0]
    end
  end
end
