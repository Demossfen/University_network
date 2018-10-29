class Company < ApplicationRecord
  has_many :employers
  belongs_to :city
end
