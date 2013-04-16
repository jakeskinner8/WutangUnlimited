class MyMailer < ActionMailer::Base
  default from: "profmash.wutang@gmail.com"
  def welcome(email)
    @email = email
    mail to: email, subject: "You have been invited to join ProfMash"
  end
end
