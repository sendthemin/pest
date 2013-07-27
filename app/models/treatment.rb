class Treatment < ActiveRecord::Base
  belongs_to :worksheet
  belongs_to :pest
  belongs_to :pesticide
  belongs_to :equipment
  belongs_to :appointment
  belongs_to :area
  belongs_to :location
  belongs_to :user
  belongs_to :client
  belongs_to :organization
  attr_accessible :amount, :method, :unit, :worksheet_id, :pest_id, :pesticide_id, :equipment_id, :comments
end
