class BigTag < ApplicationRecord
  extend Enumerize

  enumerize :name, in: %w(権利関係 法令上の制限 宅建業法 税その他)

  has_many :middle_tags
  has_many :small_tags

  has_many :past_questions
  has_many :questions
  has_many :terminologies
end
