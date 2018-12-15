class Employer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company

  validates :first_name, :last_name, :email, presence: true
end
