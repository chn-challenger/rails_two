class Question < ApplicationRecord
  has_and_belongs_to_many :lessons
  has_many :answered_questions, dependent: :destroy
  has_many :users, through: :answered_questions
  has_many :choices, dependent: :destroy
end
