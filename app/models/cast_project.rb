class CastProject < ActiveRecord::Base
	belongs_to :cast
	belongs_to :project
end