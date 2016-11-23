class YearTag < ApplicationRecord
  has_many :past_questions
  has_many :questions
end
