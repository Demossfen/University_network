class Teacher < ApplicationRecord
  has_many :subjects
  belongs_to :faculty
end
