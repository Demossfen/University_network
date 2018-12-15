class StudentSubject < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  validates :mark, presence: true,
                   numericality: {
                       greater_than_or_equal_to: 50, less_than_or_equal_to: 100
                   }
end
