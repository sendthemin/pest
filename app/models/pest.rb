class Pest < ActiveRecord::Base
  attr_accessible :name, :category, :type, :scientific_name
end
