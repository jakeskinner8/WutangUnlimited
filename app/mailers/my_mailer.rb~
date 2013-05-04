class MyMailer < ActionMailer::Base
  default from: "profmash.wutang@gmail.com"
  def welcome(email,sender)
    @sender = sender
    @email = email
    mail to: email, subject: "You have been invited to join ProfMash"
  end
  def reset(email)
    @sender = "profmash@hotmail.com"
    @email = email
    mail to: email, subject: "reset password instructions"
  end
end
