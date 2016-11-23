class QuestionMiddleTag < ApplicationRecord
  belongs_to :question
  belongs_to :middle_tag

  delegate :name, :type_code, to: :middle_tag
end
