class Group < ApplicationRecord
  belongs_to :specialty
  has_many :students
end
