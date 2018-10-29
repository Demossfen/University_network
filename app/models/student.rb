class Student < ApplicationRecord
  extend Enumerize
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :student_subjects
  has_many :subjects, through: :student_subjects
  belongs_to :group

  ROLES =
      { student: '0', admin: '1' }.with_indifferent_access.freeze
  enumerize :roles,
            in: ROLES.keys, scope: true, default: :student
  ROLES.each_key do |role_|
    define_method("#{role_}?") { role.include?(role_) }
  end

end
