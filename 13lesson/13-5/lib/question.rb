class Question
  attr_reader :question, :answer, :points

  def initialize(question_text, answer_text, points)
    @question = question_text
    @answer = answer_text
    @points = points
  end
  def has_this_answer?(user_answer)
    @answer.downcase == user_answer.downcase
  end
end
