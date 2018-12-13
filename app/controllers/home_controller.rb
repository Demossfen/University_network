class HomeController < ApplicationController
  def index
    if current_employer
      redirect_to employer_path(id: current_employer.id)
    elsif current_student
      redirect_to student_path(id: current_student.id)
    end
  end
end
