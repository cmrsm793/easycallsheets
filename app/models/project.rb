class Project < ActiveRecord::Base
  belongs_to :user
	has_many :casts
	has_many :crews
	has_many :schedules
	has_many :producers
	validates :projectname, :address, presence: true
	validates :user_id, presence: true
end
