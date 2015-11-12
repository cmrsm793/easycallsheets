class Crew < ActiveRecord::Base
  has_many :crew_projects
  has_many :projects, through: :crew_projects
	belongs_to :schedule
end
