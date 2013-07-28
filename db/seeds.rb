# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
States = [
"Alaska",
"American Samoa",
"Arizona",
"Arkansas",
"California",
"Colorado",
"Connecticut",
"Delaware",
"District of Columbia",
"Florida",
"Georgia",
"Guam",
"Hawaii",
"Idaho",
"Illinois",
"Indiana",
"Iowa",
"Kansas",
"Kentucky",
"Louisiana",
"Maine",
"Maryland",
"Massachusetts",
"Michigan",
"Minnesota",
"Mississippi",
"Missouri",
"Montana",
"Nebraska",
"Nevada",
"New Hampshire",
"New Jersey",
"New Mexico",
"New York",
"North Carolina",
"North Dakota",
"Northern Marianas Islands",
"Ohio",
"Oklahoma",
"Oregon",
"Pennsylvania",
"Puerto Rico",
"Rhode Island",
"South Carolina",
"South Dakota",
"Tennessee",
"Texas",
"Utah",
"Vermont",
"Virginia",
"Virgin Islands",
"Washington",
"West Virginia",
"Wisconsin",
"Wyoming"]

Cities = [
"NYC",
"Montauk",
"Budapest",
"Go fuck yourself"]

Names = [
"User",
"Steve Smith",
"Roach Randy",
"Man in Black",
"Franz Kafka"]

Organizations = Organization.create([
{name: "Graduate Pest Control"},
{name: "Bix box killing machine"}])

Clients = Client.create([
{name: "Bill's bordello", organization_id: Organization.all.sample.id},
{name: "Wal-Mart", organization_id: Organization.all.sample.id},
{name: "Tamas apartment", organization_id: Organization.all.sample.id}])

Locations = ["Main"]

Areas = ["Kitchen", "Bathroom", "Meat locker"]

Names.each do |name|
	u = User.create
	u.name = name
	u.email = name.split.first+"@example.com"
	u.password = 'fucker'
	u.password_confirmation = 'fucker'
	u.organization_id = Organization.all.sample.id
	u.save
end

Client.all.each do |c|
	l = Location.create
	l.client_id = c.id
	l.name = Locations.sample
	l.save
end

Location.all.each do |l|
	rand(1..3).times do |i|
		a = Area.new
		a.name = Areas.sample
		a.location_id = l.id
		a.save
	end
end




