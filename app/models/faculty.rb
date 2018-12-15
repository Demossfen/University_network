class Faculty < ApplicationRecord
  has_many :specialty
  has_many :teachers
  belongs_to :university

  validates :title, presence: true
end
