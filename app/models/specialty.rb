class Specialty < ApplicationRecord
  has_many :groups
  belongs_to :faculty
end
