class Ability
  include CanCan::Ability

  def initialize(user)
    can :dashboard, :all
    can :access, :rails_admin

    can :update, Student, id: user.id
    if user.instance_of?(Student)
      if user.admin?
        can :manage, :all
        cannot :approve_employer, Employer
        can :approve_employer, Employer, status: :new
        cannot :ban_employer, Employer, status: :banned
        cannot :send, Student
      end
    elsif user.instance_of?(Employer)
      can :send, Student
    end
  end
end
