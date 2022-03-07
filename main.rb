require "./question"
require "./game"

# player1 = Player.new
# puts player1.lives
# player1.decrease_lives
# puts player1.lives

#initialize game
game = Game.new


while game.active do
    # current_player = (turn.current_player == 1 ? game.player1 : game.player2)
    current_player = game.get_current_player
    
    question = Question.new rand(20), rand(20)
    puts "Player #{game.turn}: " + question.ask_question
    answer = gets.chomp.to_i
    if question.check_answer(answer) 
      puts "P1: YES! You are correct"
    else
      puts "Player #{game.turn}: Seriously? No!"
      current_player.decrease_lives
    end
    game.check_winner
    puts game.active ? "--- NEW TURN ---" : "--- GAME OVER ---\nGood bye!"
    game.change_turn
    
  
end