class Project < ApplicationRecord
  belongs_to :student

  validates :title, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { in: 30..300 }

  scope :by_student, ->(student) { where(student: student) }
end
