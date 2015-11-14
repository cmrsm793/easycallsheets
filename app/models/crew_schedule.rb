class CrewSchedule < ActiveRecord::Base
	belongs_to :crew
	belongs_to :schedule
end