class Stop < ActiveRecord::Base
  belongs_to :appointment
  belongs_to :area
  belongs_to :combo
  attr_accessible :notes, :appointment_id, :area_id, :combo_id
end
