class Company < ApplicationRecord
  has_many :employers
  belongs_to :city

  validates :name, :site_link, :description, presence: true
  validates :description, length: { in: 10..100 }
end
