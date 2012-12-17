class Role < ActiveRecord::Base
  attr_accessible :role_name, :power
  paginates_per 30
end
