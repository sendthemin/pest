class Pesticide < ActiveRecord::Base
  attr_accessible :active_ingredient, :common_name, :epa_registration, :formulation, :restricted_use, :scientific_name, :signal
end
