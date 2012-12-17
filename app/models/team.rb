class Team < ActiveRecord::Base
  attr_accessible :team_name
  paginates_per 30
end
