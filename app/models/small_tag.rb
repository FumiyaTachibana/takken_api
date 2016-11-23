class SmallTag < ApplicationRecord
  has_many :past_questions, dependent: :destroy
  has_many :past_questions, through: :past_question_small_tags

  has_many :questions, dependent: :destroy
  has_many :questions, through: :question_small_tags

  has_many :terminologies

  belongs_to :big_tag
  belongs_to :middle_tag
end
