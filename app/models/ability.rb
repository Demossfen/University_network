class Ability
  include CanCan::Ability

  def initialize(user)
    can :update, Student, id: user.id
  end
end
