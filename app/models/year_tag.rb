class YearTag < ApplicationRecord
  has_many :past_questions
  has_many :questions

  #def to_param
  #  year
  #end
end
