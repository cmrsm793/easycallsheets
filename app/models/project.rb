class Project < ActiveRecord::Base
  belongs_to :user
	has_many :casts
	has_many :crews
	has_many :schedules
	has_many :producers
	accepts_nested_attributes_for :producers
	accepts_nested_attributes_for :casts
	accepts_nested_attributes_for :crews
	validates :projectname, :address, presence: true
	validates :user_id, presence: true
end
