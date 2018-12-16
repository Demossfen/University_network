class MailsController < ApplicationController
  def new
    @from = current_employer.email
  end

  def create
    EmployerMailer.send_offer(
        to: params[:to], from: params[:from],
        body: params[:body]
    ).deliver_later
    redirect_to student_path(id: Student.find_by_email(params[:to]).id)
  end
end
