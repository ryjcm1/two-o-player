class Turn

  attr_reader :current_player

  def initialize
    @current_player = 1
  end

  def change_player
    if @current_player == 1
      @current_player = 2
    else
      @current_player = 1
    end
  end

end

# turn = Turn.new
# puts turn.current_player
# turn.change_player
# puts turn.current_player
