class Terminology < ApplicationRecord
  belongs_to :big_tag
  belongs_to :middle_tag
  belongs_to :small_tag
end
