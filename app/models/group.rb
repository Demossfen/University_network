class Group < ApplicationRecord
  belongs_to :specialty
  has_many :students

  validates :title, presence:  true
end
