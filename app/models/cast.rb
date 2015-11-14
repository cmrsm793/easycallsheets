class Cast < ActiveRecord::Base
  has_many :cast_projects
  has_many :projects, through: :cast_projects
  has_many :cast_schedules
	has_many :schedules, through: :cast_schedules

	
end
