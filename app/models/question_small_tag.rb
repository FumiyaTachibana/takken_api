class QuestionSmallTag < ApplicationRecord
  belongs_to :question
  belongs_to :small_tag

  delegate :name, :type_code, to: :small_tag
end
