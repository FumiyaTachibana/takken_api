class PastQuestion < ApplicationRecord
  has_many :choices, class_name: 'PastQuestionChoice', dependent: :destroy

  belongs_to :year_tag

  # 大タグ
  belongs_to :big_tag

  # 中タグ
  has_many :past_question_middle_tags, dependent: :destroy
  has_many :middle_tags, through: :past_question_middle_tags

  # 小タグ
  has_many :past_question_small_tags, dependent: :destroy
  has_many :small_tags, through: :past_question_small_tags
end
