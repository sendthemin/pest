class Location < ActiveRecord::Base
  belongs_to :client
  has_many :areas
  attr_accessible :location_address, :location_contact, :location_email, :location_name, :location_phone, :client_id
end
