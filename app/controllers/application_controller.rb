class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_ability
    if current_student
      @current_ability ||= Ability.new(current_student)
    elsif current_employer
      @current_ability ||= Ability.new(current_employer)
    end
  end
end
