class PastQuestionSmallTag < ApplicationRecord
  belongs_to :past_question
  belongs_to :small_tag

  delegate :name, :type_code, to: :small_tag
end
