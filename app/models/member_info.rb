class MemberInfo < ActiveRecord::Base
  attr_accessible :birthday, :full_name, :gender, :email,:project_id, :role_id, :team_id, :anpi_info_id
  has_one :anpi_info ,:dependent => :destroy
  belongs_to :project
  belongs_to :role
  belongs_to :team
  paginates_per 30
end
