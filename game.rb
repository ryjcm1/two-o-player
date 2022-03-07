require "./player"

class Game

  attr_reader :player1, :player2, :active

  def initialize
    @active = true
    @player1 = Player.new
    @player2 = Player.new
    @turn = 1
  end

  def end_game
    @active = false
  end

  def check_winner
    if @player1.lives == 0
      puts "Player 2 wins with a score of #{@player2.lives}/3"
      end_game
    elsif @player2.lives == 0
      puts "Player 1 wins with a score of #{@player1.lives}/3"
      end_game
    else
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
  end

  def change_turn
    @turn = @turn == 1 ? 2 : 1
  end

  def get_current_player
    @turn == 1 ? @player1 : @player2
  end

end

# game = Game.new
# puts game.player1.lives
# puts game.player2.lives
# puts game.active

# game.player1.decrease_lives
# game.player1.decrease_lives
# game.player1.decrease_lives


# game.check_winner
# game.end_game
