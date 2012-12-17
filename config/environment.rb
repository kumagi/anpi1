
require 'pp'

#require "smtp_tls"
=begin
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:user_name => "attack.chance.3g@gmail.com",
:password => 'tehepero3g',
:authentication => 'plain',
:enable_starttls_auto => true
}
=end
#config.action_mailer.perform_deliveries = true
#config.action_mailer.raise_delivery_errors = true

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Anpi1::Application.initialize!
