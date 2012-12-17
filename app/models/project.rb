class Project < ActiveRecord::Base
  attr_accessible :p_name
  paginates_per 30
end
