class MiddleTag < ApplicationRecord
  has_many :past_question_middle_tags, dependent: :destroy
  has_many :past_questions, through: :past_question_middle_tags

  has_many :question_middle_tags, dependent: :destroy
  has_many :questions, through: :question_middle_tags

  has_many :small_tags
  has_many :terminologies

  belongs_to :big_tag
end
