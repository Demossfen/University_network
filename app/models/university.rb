class University < ApplicationRecord
  belongs_to :city
  has_many :faculties

  validates :name, presence: true
end
