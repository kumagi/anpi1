class MailTemplate < ActiveRecord::Base
  attr_accessible :body, :mailName, :title
end
