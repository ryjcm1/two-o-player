require "./question"
require "./game"
require "./turn"

# player1 = Player.new
# puts player1.lives
# player1.decrease_lives
# puts player1.lives

#initialize game
game = Game.new
turn = Turn.new

while game.active do
    # current_player = (turn.current_player == 1 ? game.player1 : game.player2)
    current_player = game.get_current_player
    
    question = Question.new rand(20), rand(20)
    puts "Player #{turn.current_player}: " + question.ask_question
    answer = gets.chomp.to_i
    if question.check_answer(answer) 
      puts "P1: YES! You are correct"
    else
      puts "Player #{turn.current_player}: Seriously? No!"
      current_player.decrease_lives
    end
    game.check_winner
    game.change_turn

  
end