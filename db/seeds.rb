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
	u.password = 'fucker12'
	u.password_confirmation = 'fucker12'
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

# here come the @pests
Pest.create(
[
  {
    type: "bird",
    category: "Birds",
    name: "bird"
  },
  {
    type: "vertebrate",
    category: "Bats",
    name: "bat"
  },
  {
    type: "vertebrate",
    category: "Humans",
    name: "human"
  },
  {
    type: "vertebrate",
    category: "Rodents",
    name: "rodent"
  },
  {
    type: "vertebrate",
    category: "moles",
    name: "mole"
  },
  {
    type: "vertebrate",
    category: "voles",
    name: "vole"
  },
  {
    type: "vertebrate",
    category: "Squirrels",
    name: "squirrel"
  },
  {
    type: "vertebrate",
    category: "mice",
    name: "house mouse"
  },
  {
    type: "vertebrate",
    category: "mice",
    name: "field mouse"
  },
  {
    type: "vertebrate",
    category: "mice",
    name: "deer mouse"
  },
  {
    type: "vertebrate",
    category: "Rats",
    name: "norwegian rat"
  },
  {
    type: "vertebrate",
    category: "Rats",
    name: "roof rat"
  },
  {
    type: "vertebrate",
    category: "Dogs",
    name: "dog"
  },
  {
    type: "vertebrate",
    category: "Cats",
    name: "cat"
  },
  {
    type: "vertebrate",
    category: "raccoons",
    name: "raccoon"
  },
  {
    type: "vertebrate",
    category: "oppossium",
    name: "oppossum"
  },
  {
    type: "invertebrate",
    category: "two body sements",
    name: "spiders "
  },
  {
    type: "invertebrate",
    category: "two body sements",
    name: "mittes"
  },
  {
    type: "invertebrate",
    category: "two body sements",
    name: "ticks"
  },
  {
    type: "invertebrate",
    category: "two body sements",
    name: "scorpions"
  },
  {
    type: "invertebrate",
    category: "two body sements",
    name: "granddaddy longlegs"
  },
  {
    type: "invertebrate",
    category: "Sowbugs",
    name: "Sowbugs"
  },
  {
    type: "invertebrate",
    category: "crayfish",
    name: "crayfish"
  },
  {
    type: "invertebrate",
    category: "lobsters",
    name: "lobsters"
  },
  {
    type: "invertebrate",
    category: "crabs",
    name: "crabs"
  },
  {
    type: "invertebrate",
    category: "centipedes",
    name: "many-segmented with one pair of legs per sgement"
  },
  {
    type: "invertebrate",
    category: "millipedes",
    name: "many body segments with two pair of legs per segment"
  },
  {
    type: "invertebrate",
    category: "three body segments",
    name: "three body segments"
  },
  {
    type: "invertebrate",
    category: "Bristletails",
    name: "Bristletails"
  },
  {
    type: "invertebrate",
    category: "firebrats",
    name: "firebrats"
  },
  {
    type: "invertebrate",
    category: "silverfish",
    name: "silverfish"
  },
  {
    type: "invertebrate",
    category: "Springtails",
    name: "Springtails"
  },
  {
    type: "invertebrate",
    category: "grasshoppers",
    name: "grasshoppers"
  },
  {
    type: "invertebrate",
    category: "crickets",
    name: "crickets"
  },
  {
    type: "invertebrate",
    category: "cockroaches",
    name: "German"
  },
  {
    type: "invertebrate",
    category: "cockroaches",
    name: "Brown banded"
  },
  {
    type: "invertebrate",
    category: "cockroaches",
    name: "Oriental "
  },
  {
    type: "invertebrate",
    category: "cockroaches",
    name: "American "
  },
  {
    type: "invertebrate",
    category: "cockroaches",
    name: "austrialian "
  },
  {
    type: "invertebrate",
    category: "cockroaches",
    name: "Wood "
  },
  {
    type: "invertebrate",
    category: "cockroaches",
    name: "smokey Brown"
  },
  {
    type: "invertebrate",
    category: "Termites",
    name: "Termites"
  },
  {
    type: "invertebrate",
    category: "psocids",
    name: "psocids"
  },
  {
    type: "invertebrate",
    category: "booklice",
    name: "booklice"
  },
  {
    type: "invertebrate",
    category: "chewing lice",
    name: "chewing lice"
  },
  {
    type: "invertebrate",
    category: "bird lice",
    name: "bird lice"
  },
  {
    type: "invertebrate",
    category: "Sucking lice",
    name: "Sucking lice"
  },
  {
    type: "invertebrate",
    category: "head lice",
    name: "head lice"
  },
  {
    type: "invertebrate",
    category: "Body lice",
    name: "Body lice"
  },
  {
    type: "invertebrate",
    category: "Pubic lice",
    name: "Pubic lice"
  },
  {
    type: "invertebrate",
    category: "Bugs",
    name: "Bugs"
  },
  {
    type: "invertebrate",
    category: "Bed bugs",
    name: "Bed bugs"
  },
  {
    type: "invertebrate",
    category: "Stink bugs",
    name: "Stink bugs"
  },
  {
    type: "invertebrate",
    category: "Eastern Pine Bug",
    name: "Eastern Pine Bug"
  },
  {
    type: "invertebrate",
    category: "Chinch bug",
    name: "Chinch bug"
  },
  {
    type: "invertebrate",
    category: "Box Elder bug",
    name: "Box Elder bug"
  },
  {
    type: "invertebrate",
    category: "cicada",
    name: "cicada"
  },
  {
    type: "invertebrate",
    category: "Hoppers",
    name: "Hoppers"
  },
  {
    type: "invertebrate",
    category: "Psyllids",
    name: "Psyllids"
  },
  {
    type: "invertebrate",
    category: "Whiteflies",
    name: "Whiteflies"
  },
  {
    type: "invertebrate",
    category: "Aphids",
    name: "Aphids"
  },
  {
    type: "invertebrate",
    category: "Scale insects",
    name: "Scale insects"
  },
  {
    type: "invertebrate",
    category: "Earwigs",
    name: "Earwigs"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Stored product"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Fabric "
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Black carpet"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Carpet "
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "confused Flour"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Drugstore"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Elm leaaf"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "False powder-post"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Flat-grain"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Flatheaded wood boring"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Furinture"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Deadwatch"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Fround"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Hide"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Incinerator"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "June"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Khapra"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Lafy"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Larder"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Large cabinet"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Longhorned"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Museum"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Powder post"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Red-flour"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Saw-toothed grain"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Timber"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Varied carpet"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Beetles"
  },
  {
    type: "invertebrate",
    category: "Beetles",
    name: "Beetles"
  },
  {
    type: "invertebrate",
    category: "Butterflies",
    name: "Butterflies"
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "Moths"
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "webbing clothes"
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "casemaking "
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "Indian meal "
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "Angoumois gain"
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "Clothes "
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "Indian meal "
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "Mediterranean flour"
  },
  {
    type: "invertebrate",
    category: "Moths",
    name: "Tapestry"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Black Flies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Blowflies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Bottle flies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Cluster fly"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Deer flies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Flesh flies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Fruit flies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "gnats"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Horse flies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "House fly"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "midges"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "mosquitoes"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "Moth flies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "no-see-ums"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "punkies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "sand flies"
  },
  {
    type: "invertebrate",
    category: "flies",
    name: "stable flies"
  },
  {
    type: "invertebrate",
    category: "Crane fly",
    name: "Crane fly"
  },
  {
    type: "invertebrate",
    category: "Mosquitoes",
    name: "Salt- water"
  },
  {
    type: "invertebrate",
    category: "Mosquitoes",
    name: "Black salt-water"
  },
  {
    type: "invertebrate",
    category: "Mosquitoes",
    name: "common Malaria"
  },
  {
    type: "invertebrate",
    category: "Mosquitoes",
    name: "Western malaria"
  },
  {
    type: "invertebrate",
    category: "Mosquitoes",
    name: "punctipennis"
  },
  {
    type: "invertebrate",
    category: "Mosquitoes",
    name: "Northern house"
  },
  {
    type: "invertebrate",
    category: "Mosquitoes",
    name: "Yellow-fever"
  },
  {
    type: "invertebrate",
    category: "Mosquitoes",
    name: "Common tree hole"
  },
  {
    type: "invertebrate",
    category: "Lovebugs",
    name: "Lovebugs"
  },
  {
    type: "invertebrate",
    category: "fleas",
    name: "Cat"
  },
  {
    type: "invertebrate",
    category: "fleas",
    name: "Dog"
  },
  {
    type: "invertebrate",
    category: "fleas",
    name: "Human"
  },
  {
    type: "invertebrate",
    category: "Honey Bees",
    name: "Honey Bees"
  },
  {
    type: "invertebrate",
    category: "Yellow Jackets",
    name: "Yellow Jackets"
  },
  {
    type: "invertebrate",
    category: "Bald Faced Hornets",
    name: "Bald Faced Hornets"
  },
  {
    type: "invertebrate",
    category: "paperwasps",
    name: "paperwasps"
  },
  {
    type: "invertebrate",
    category: "Carpenter Bees",
    name: "Carpenter Bees"
  },
  {
    type: "invertebrate",
    category: "Mud-dabbers",
    name: "Mud-dabbers"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "Acrobat"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "Argentine"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "Carpenter"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "citronella"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "cornfield"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "crazy"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "honey"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "Imported fire "
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "Little Black Ant"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "Odorous"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "pavement"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "Pharoh's"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "silk"
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "Thief "
  },
  {
    type: "invertebrate",
    category: "ants",
    name: "ants"
  },
  {
    type: "invertebrate",
    category: "Alderflies",
    name: "Alderflies"
  },
  {
    type: "invertebrate",
    category: "Dobsonflies",
    name: "Dobsonflies"
  },
  {
    type: "invertebrate",
    category: "Fishflies",
    name: "Fishflies"
  },
  {
    type: "invertebrate",
    category: "Snakeflies",
    name: "Snakeflies"
  },
  {
    type: "invertebrate",
    category: "Lacewings",
    name: "Lacewings"
  },
  {
    type: "invertebrate",
    category: "Antlions",
    name: "Antlions"
  },
  {
    type: "invertebrate",
    category: "Owlflies",
    name: "Owlflies"
  },
  {
    type: "invertebrate",
    category: "Twisted-winged Parasites",
    name: "Twisted-winged Parasites"
  },
  {
    type: "invertebrate",
    category: "Scorpionflies",
    name: "Scorpionflies"
  },
  {
    type: "invertebrate",
    category: "Caddisflies",
    name: "Caddisflies"
  }
])

# and the @pesticides

Pesticide.create([
  {
    name: "CB 123 Extra",
    scientific_name: "Pyrethrins",
    active_ingredient: "1.00%",
    formulation: "RTU ULD",
    epa_registration: "9444-188",
    signal: "Caution"
  },
  {
    name: "Contrac",
    scientific_name: "Bromadiolone",
    active_ingredient: "0.01%",
    formulation: "RTU Rodent Blocks",
    epa_registration: "12455-79",
    signal: "Caution"
  },
  {
    name: "Ditrac Tracking Powder",
    scientific_name: "Diphacinone",
    active_ingredient: "0.20%",
    formulation: "RTU Tracking Powder",
    epa_registration: "12455-56",
    signal: "Warning"
  },
  {
    name: "Drione",
    scientific_name: "Pyrethrins",
    active_ingredient: "1.00%",
    formulation: "Dust",
    epa_registration: "432-992",
    signal: "Caution"
  },
  {
    name: "Exciter",
    scientific_name: "Pyrethrins",
    active_ingredient: "0.03%",
    formulation: "E.C.",
    epa_registration: "655-798",
    signal: "Caution"
  },
  {
    name: "Exciter",
    scientific_name: "Pyrethrins",
    active_ingredient: "0.01%",
    formulation: "E.C.",
    epa_registration: "655-798",
    signal: "Caution"
  },
  {
    name: "Gentrol",
    scientific_name: "(S)-Hydoprene",
    active_ingredient: "0.06%",
    formulation: "E.C.",
    epa_registration: "2724-351",
    signal: "Caution"
  },
  {
    name: "In Tice",
    scientific_name: "Ortho Boric Acid",
    active_ingredient: "5.00%",
    formulation: "RTU Granular Bait",
    epa_registration: "73079-2",
    signal: "Caution"
  },
  {
    name: "Maxforce Roach",
    scientific_name: "Fipronit",
    active_ingredient: "0.05%",
    formulation: "RTU Bait Trays",
    epa_registration: "432-1257",
    signal: "Caution"
  },
  {
    name: "Maxforce Roach Gel",
    scientific_name: "Hydramethylnon",
    active_ingredient: "0.15%",
    formulation: "RTU Bait Gel",
    epa_registration: "432-1254",
    signal: "Caution"
  },
  {
    name: "Onslaught",
    scientific_name: "(S)-cyano",
    active_ingredient: "0.01%",
    formulation: "Microencapsulation",
    epa_registration: "1021-1815",
    signal: "Caution"
  },
  {
    name: "Onslaught",
    scientific_name: "(S)-cyano",
    active_ingredient: "0.03%",
    formulation: "Microencapsulation",
    epa_registration: "1021-1815",
    signal: "Caution"
  },
  {
    name: "Pyrocide 100",
    scientific_name: "Pyrethrins",
    active_ingredient: "1.00%",
    formulation: "RTU ULD",
    epa_registration: "1021-1424",
    signal: "Caution"
  },
  {
    name: "Pyrocide 300",
    scientific_name: "Pyrethrins",
    active_ingredient: "3.00%",
    formulation: "RTU ULD",
    epa_registration: "1021-1177",
    signal: "Caution"
  },
  {
    name: "Suspend SC",
    scientific_name: "Deltramethrin",
    active_ingredient: "0.03%",
    formulation: "SC",
    epa_registration: "432-763",
    signal: "Caution"
  },
  {
    name: "Suspend SC",
    scientific_name: "Deltramethrin",
    active_ingredient: "0.05%",
    formulation: "SC",
    epa_registration: "432-763",
    signal: "Caution"
  },
  {
    name: "Tempo",
    scientific_name: "B-Cyfluthrin",
    active_ingredient: "0.03%",
    formulation: "Ultra WP Ultra",
    epa_registration: "432-1304",
    signal: "Caution"
  },
  {
    name: "Tempo",
    scientific_name: "B-Cyfluthrin",
    active_ingredient: "0.05%",
    formulation: "Ultra WP Ultra",
    epa_registration: "432-1304",
    signal: "Caution"
  },
  {
    name: "Termidor NY",
    scientific_name: "Fipronil",
    active_ingredient: "0.06%",
    formulation: "E.C.",
    epa_registration: "7969-210",
    signal: "Caution"
  },
  {
    name: "WeatherBlok XT",
    scientific_name: "Brodifacoum",
    active_ingredient: "0.50%",
    formulation: "RTU Rodent Blocks",
    epa_registration: "100-1055",
    signal: "Caution"
  }
])




