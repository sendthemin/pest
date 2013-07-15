class Treatment < ActiveRecord::Base
  belongs_to :worksheet
  belongs_to :pest
  belongs_to :pesticide
  belongs_to :equipment
  attr_accessible :amount, :method, :unit
end
