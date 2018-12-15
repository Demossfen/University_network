class Specialty < ApplicationRecord
  has_many :groups
  belongs_to :faculty

  validates :title, presence: true
end
