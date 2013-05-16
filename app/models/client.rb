class Client < ActiveRecord::Base
	has_many :locations
	has_many :areas, :through => :locations
  attr_accessible :billingaddress, :billingaddresssame, :billingcontactname, :billingemail, :billingphone, :clientname, :contactemail, :contactname, :contactphone, :locationaddress
 #  after_create :firstlocation
	# private firstlocation

	# 	if :billingaddresssame
	# 		@location = Location.new
	# 		...
			


	# end

end

