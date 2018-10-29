class City < ApplicationRecord
  has_many :universities
  has_many :companies
end
