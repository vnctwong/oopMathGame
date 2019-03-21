class Question

  def initialize
    @number1 = random_number
    @number2 = random_number
  end
 
  def question_text
    "what is #{@number1} + #{@number2}?"
  end
 
  def correct_answer?(some_answer)
    @number1 + @number2 == some_answer.to_i
  end

  def random_number
      return rand(20)
 end

end