class Question < ApplicationRecord
  belongs_to :category
  belongs_to :question_trend
  belongs_to :year
  has_many :choices
  has_many :session_questions
  has_many :saved_questions
  has_many :user_answers
  has_many :comments
end
