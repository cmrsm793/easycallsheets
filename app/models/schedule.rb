class Schedule < ActiveRecord::Base
  belongs_to :project 
  has_many :cast_schedules
	has_many :casts, through: :cast_schedules
	has_many :crew_schedules
	has_many :crews, through: :crew_schedules
	accepts_nested_attributes_for :casts
	accepts_nested_attributes_for :crews
end
