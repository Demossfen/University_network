class Teacher < ApplicationRecord
  has_many :subjects
  belongs_to :faculty

  validates :first_name, :last_name, :surname, :email, presence: true
end
