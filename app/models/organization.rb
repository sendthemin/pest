class Organization < ActiveRecord::Base
  attr_accessible :address, :name, :org_phone, :url, :city, :zipcode, :state, :type 
  # has_many :users
  has_many :clients
  has_many :users
  has_many :appointments, :through => :users
  has_many :worksheets, :through => :appointments
  has_many :treatments, :through => :worksheets
end
