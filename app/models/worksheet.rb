class Worksheet < ActiveRecord::Base
  belongs_to :area
  attr_accessible :pest_comment, :pestcontrol_comment, :sanitation_comment
end
