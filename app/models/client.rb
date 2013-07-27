class Client < ActiveRecord::Base
	belongs_to :organization
	has_many :locations
	has_many :areas, :through => :locations
	has_many :appointments, :through => :areas
	has_many :worksheets, :through => :appointments
	has_many :treatments, :through => :worksheets
  attr_accessible :billingaddress, :billingstate, :billingzipcode, :billingcity, :billingname, :billingemail, :billingphone, :clientname, :contactemail, :contactname, :contactphone, :contactaddress, :contactstate, :contactzipcode, :contactcity
 #  after_create :firstlocation
	# private firstlocation

	# 	if :billingaddresssame
	# 		@location = Location.new
	# 		...
			


	# end

end

