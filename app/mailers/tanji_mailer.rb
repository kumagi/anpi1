class TanjiMailer < ActionMailer::Base
  default from: "attack.chance.3g@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.tanji_mailer.tanji.subject
  #
  def tanji
    @greeting = "Hi"

    mail (:to => "attack.chance.3g@gmail.com",:subject => "hello")
  end
end
