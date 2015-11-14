class Crew < ActiveRecord::Base
  has_many :crew_projects
  has_many :projects, through: :crew_projects
  has_many :crew_schedules
	has_many :schedules, through: :crew_schedules
end
