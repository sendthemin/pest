class Area < ActiveRecord::Base
	belongs_to :client
	belongs_to :location
  attr_accessible :name, :location_id
end
