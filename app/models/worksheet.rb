class Worksheet < ActiveRecord::Base
	belongs_to :appointment
  belongs_to :area
  belongs_to :location
  belongs_to :user
  belongs_to :client
  belongs_to :organization
  has_many :treatments
  attr_accessible :pestcontrol_comment, :sanitation_comment, :area_id, :appointment_id
end
