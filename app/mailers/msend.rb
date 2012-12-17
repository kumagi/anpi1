class Msend < ActionMailer::Base
  #default from: "attack.chance.3g@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.msend.send1.subject
  #
  def send1
    #subject  "Msend#send1"
    #from
    #@greeting = "Hi"
    mail(:to => "tomonori.ikuse@gmail.com", :subject => "subject", :from => "attack.chance.3g@gmail.com")
  end
end
