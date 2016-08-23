class Lesson < ApplicationRecord
  belongs_to :topic
  has_and_belongs_to_many :questions
  has_many :current_questions

  def random
    offset = rand(questions.count)
    questions.offset(offset).first
  end

end
