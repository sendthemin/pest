class Location < ActiveRecord::Base
  belongs_to :client
  belongs_to :organization
  has_many :areas
  has_many :appointments
  has_many :stops, :through => :appointments
  attr_accessible :location_address, :location_contact, :location_email, :location_name, :location_phone, :client_id
end
