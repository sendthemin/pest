class Area < ActiveRecord::Base
	belongs_to :client
	belongs_to :location
  attr_accessible :area_name, :area_id, :location_id
end
