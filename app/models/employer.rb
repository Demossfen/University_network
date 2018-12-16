class Employer < ApplicationRecord
  include FullName
  extend Enumerize
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company

  STATUSES = { new: 0, approved: 1, banned: 2 }.with_indifferent_access.freeze

  enumerize :status, in: STATUSES.keys, scope: true, default: :new

  STATUSES.each_key do |_status|
    define_method("#{_status}?") { status == _status }
  end

  validates :first_name, :last_name, :email, :status, presence: true
end
