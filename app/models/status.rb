class Status < ActiveRecord::Base
  attr_accessible :last_send, :selected_mail_id
  belongs_to :selected_mail
end
