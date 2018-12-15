class Subject < ApplicationRecord
  has_many :student_subjects
  has_many :students, through: :student_subjects
  belongs_to :teacher

  validates :title, presence: true
end
