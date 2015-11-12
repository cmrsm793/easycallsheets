class Cast < ActiveRecord::Base
  has_many :cast_projects
  has_many :projects, through: :cast_projects
	belongs_to :schedule
	
end
