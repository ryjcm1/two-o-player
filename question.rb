class Question

  attr_reader :first_number, :second_number, :answer

  def initialize (num1, num2)
    @first_number = num1
    @second_number = num2
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

