class Project < ActiveRecord::Base
  belongs_to :user
  has_many :cast_projects
  has_many :casts, through: :cast_projects
  has_many :crew_projects
  has_many :crews, through: :crew_projects
	has_many :schedules
	has_many :producers
	has_many :callsheets
	accepts_nested_attributes_for :producers
	accepts_nested_attributes_for :casts
	accepts_nested_attributes_for :crews
	validates :projectname, :address, presence: true
	validates :user_id, presence: true
end
