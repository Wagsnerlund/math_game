require './game'

class Question
  attr_reader :answer

  def initialize
    @answer = -1
  end

  def new_question
    number = Random.new
    first_num = number.rand(20)
    second_num = number.rand(20)
    @answer = first_num + second_num
    "What is #{first_num} + #{second_num} Equal to?"
  end
end