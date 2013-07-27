class Location < ActiveRecord::Base
  belongs_to :client
  belongs_to :organization
  has_many :areas
  has_many :appointments
  has_many :worksheets, :through => :appointments
  has_many :treatments, :through => :worksheets
  attr_accessible :address, :comments, :contact, :email, :name, :phone, :client_id, :city, :state, :zipcode
end
