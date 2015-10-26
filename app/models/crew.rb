class Crew < ActiveRecord::Base
  belongs_to :project
	belongs_to :schedule
end
