class Question

  attr_reader :first_number, :second_number, :answer

  # Try initializing with passed-in values
  def initialize
    @first_number = rand(20)
    @second_number = rand(20)
    @answer = @first_number + @second_number
  end

  def ask_question
    "What is #{@first_number} plus #{@second_number}?"
  end

  def check_answer(num)
    if num == @answer
      true
    else
      false
    end
  end

end

# question1 = Question.new
# puts question1.first_number
# puts question1.second_number
# puts question1.answer
# answer = gets.chomp.to_i
# puts question1.check_answer(answer)