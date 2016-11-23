class Question < ApplicationRecord
  has_many :choices, class_name: 'QuestionChoice', dependent: :destroy

  has_many :question_middle_tags, dependent: :destroy
  has_many :middle_tags, through: :question_middle_tags

  has_many :question_small_tags, dependent: :destroy
  has_many :small_tags, through: :question_small_tags

  belongs_to :year_tag
  belongs_to :big_tag
end
