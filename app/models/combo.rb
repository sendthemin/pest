class Combo < ActiveRecord::Base
  belongs_to :pest
  belongs_to :pesticide
  belongs_to :application
  attr_accessible :pest_id, :pesticide_id, :application_id
end
