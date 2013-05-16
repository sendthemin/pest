class Appointment < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  attr_accessible :date, :user_id, :location_id
end
