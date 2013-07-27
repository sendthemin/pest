class Appointment < ActiveRecord::Base
	belongs_to :location
  belongs_to :user
  belongs_to :client
  belongs_to :organization
  has_many :worksheets
  has_many :treatments, :through => :worksheets
  attr_accessible :date, :user_id, :location_id, :comments
end
