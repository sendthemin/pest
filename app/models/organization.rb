class Organization < ActiveRecord::Base
  attr_accessible :address, :name, :org_phone, :url
  # has_many :users
  has_many :clients
  has_many :appointments, :through => :users
  has_many :stops, :through => :appointments
end
