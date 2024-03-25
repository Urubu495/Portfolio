class User < ApplicationRecord
  has_many :sessions
  has_many :saved_questions
  has_many :user_answers
  has_many :comments
end
