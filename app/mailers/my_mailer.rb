class MyMailer < ActionMailer::Base
  default from: "attack.chance.3g@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.my_mailer.call.subject
  #
  def show

    subject "test"
    recipients "attack.chance.3g@gmail.com"
    from "attack.chance.3g@gmail.com"    
    sent_at sent_at
    body "hello"

#    mail to: "attack.chance.3g@gmail.com"
  end
end
