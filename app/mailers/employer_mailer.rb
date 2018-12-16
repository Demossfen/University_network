class EmployerMailer < ApplicationMailer
  def send_offer(to:,body:, from:)
    @employer = Employer.find_by_email(from)
    subject = "You receive message from #{@employer.full_name} from" +
              + " #{@employer.company.name} company"
    body += "\n\n You can answer to #{@employer.first_name} to her email #{@employer.email}"
    @mail_params = { to: 'pastuh.vitalik98@gmail.com',
                     subject: subject, body: body, from: from }
    mail @mail_params
  end
end
