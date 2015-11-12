class CrewProject < ActiveRecord::Base
	belongs_to :crew
	belongs_to :project
end