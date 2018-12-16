class Student < ApplicationRecord
  include FullName
  extend Enumerize
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :student_subjects
  has_many :subjects, through: :student_subjects
  belongs_to :group

  validates :first_name, :last_name, :surname, :email, :birth_date,
            :year_of_study, presence: true
  validates :year_of_study, numericality: { in: 1..6 }

  ROLES =
      { student: 0, admin: 1 }.with_indifferent_access.freeze

  enumerize :roles,
            in: ROLES.keys, scope: true, default: :student

  ROLES.each_key do |role_|
    define_method("#{role_}?") { roles.include?(role_) }
  end

  scope :by_group, ->(group) { where(group: group) }
  scope :by_year_of_study, ->(year) { where(year_of_study: year) }
  scope :by_last_name, ->(last_name) {
    where(arel_table[:last_name].matches("%#{last_name}%"))
  }
end
