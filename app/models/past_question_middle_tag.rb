class PastQuestionMiddleTag < ApplicationRecord
  belongs_to :past_question
  belongs_to :middle_tag

  delegate :name, :type_code, to: :middle_tag
end
