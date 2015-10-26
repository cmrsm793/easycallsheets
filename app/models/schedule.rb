class Schedule < ActiveRecord::Base
  belongs_to :project 
	has_many :casts
	has_many :crews
end
