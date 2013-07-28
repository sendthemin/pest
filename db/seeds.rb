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
    typep: "bird",
    category: "Birds",
    name: "bird"
  },
  {
    typep: "vertebrate",
    category: "Bats",
    name: "bat"
  },
  {
    typep: "vertebrate",
    category: "Humans",
    name: "human"
  },
  {
    typep: "vertebrate",
    category: "Rodents",
    name: "rodent"
  },
  {
    typep: "vertebrate",
    category: "moles",
    name: "mole"
  },
  {
    typep: "vertebrate",
    category: "voles",
    name: "vole"
  },
  {
    typep: "vertebrate",
    category: "Squirrels",
    name: "squirrel"
  },
  {
    typep: "vertebrate",
    category: "mice",
    name: "house mouse"
  },
  {
    typep: "vertebrate",
    category: "mice",
    name: "field mouse"
  },
  {
    typep: "vertebrate",
    category: "mice",
    name: "deer mouse"
  },
  {
    typep: "vertebrate",
    category: "Rats",
    name: "norwegian rat"
  },
  {
    typep: "vertebrate",
    category: "Rats",
    name: "roof rat"
  },
  {
    typep: "vertebrate",
    category: "Dogs",
    name: "dog"
  },
  {
    typep: "vertebrate",
    category: "Cats",
    name: "cat"
  },
  {
    typep: "vertebrate",
    category: "raccoons",
    name: "raccoon"
  },
  {
    typep: "vertebrate",
    category: "oppossium",
    name: "oppossum"
  },
  {
    typep: "invertebrate",
    category: "two body sements",
    name: "spiders "
  },
  {
    typep: "invertebrate",
    category: "two body sements",
    name: "mittes"
  },
  {
    typep: "invertebrate",
    category: "two body sements",
    name: "ticks"
  },
  {
    typep: "invertebrate",
    category: "two body sements",
    name: "scorpions"
  },
  {
    typep: "invertebrate",
    category: "two body sements",
    name: "granddaddy longlegs"
  },
  {
    typep: "invertebrate",
    category: "Sowbugs",
    name: "Sowbugs"
  },
  {
    typep: "invertebrate",
    category: "crayfish",
    name: "crayfish"
  },
  {
    typep: "invertebrate",
    category: "lobsters",
    name: "lobsters"
  },
  {
    typep: "invertebrate",
    category: "crabs",
    name: "crabs"
  },
  {
    typep: "invertebrate",
    category: "centipedes",
    name: "many-segmented with one pair of legs per sgement"
  },
  {
    typep: "invertebrate",
    category: "millipedes",
    name: "many body segments with two pair of legs per segment"
  },
  {
    typep: "invertebrate",
    category: "three body segments",
    name: "three body segments"
  },
  {
    typep: "invertebrate",
    category: "Bristletails",
    name: "Bristletails"
  },
  {
    typep: "invertebrate",
    category: "firebrats",
    name: "firebrats"
  },
  {
    typep: "invertebrate",
    category: "silverfish",
    name: "silverfish"
  },
  {
    typep: "invertebrate",
    category: "Springtails",
    name: "Springtails"
  },
  {
    typep: "invertebrate",
    category: "grasshoppers",
    name: "grasshoppers"
  },
  {
    typep: "invertebrate",
    category: "crickets",
    name: "crickets"
  },
  {
    typep: "invertebrate",
    category: "cockroaches",
    name: "German"
  },
  {
    typep: "invertebrate",
    category: "cockroaches",
    name: "Brown banded"
  },
  {
    typep: "invertebrate",
    category: "cockroaches",
    name: "Oriental "
  },
  {
    typep: "invertebrate",
    category: "cockroaches",
    name: "American "
  },
  {
    typep: "invertebrate",
    category: "cockroaches",
    name: "austrialian "
  },
  {
    typep: "invertebrate",
    category: "cockroaches",
    name: "Wood "
  },
  {
    typep: "invertebrate",
    category: "cockroaches",
    name: "smokey Brown"
  },
  {
    typep: "invertebrate",
    category: "Termites",
    name: "Termites"
  },
  {
    typep: "invertebrate",
    category: "psocids",
    name: "psocids"
  },
  {
    typep: "invertebrate",
    category: "booklice",
    name: "booklice"
  },
  {
    typep: "invertebrate",
    category: "chewing lice",
    name: "chewing lice"
  },
  {
    typep: "invertebrate",
    category: "bird lice",
    name: "bird lice"
  },
  {
    typep: "invertebrate",
    category: "Sucking lice",
    name: "Sucking lice"
  },
  {
    typep: "invertebrate",
    category: "head lice",
    name: "head lice"
  },
  {
    typep: "invertebrate",
    category: "Body lice",
    name: "Body lice"
  },
  {
    typep: "invertebrate",
    category: "Pubic lice",
    name: "Pubic lice"
  },
  {
    typep: "invertebrate",
    category: "Bugs",
    name: "Bugs"
  },
  {
    typep: "invertebrate",
    category: "Bed bugs",
    name: "Bed bugs"
  },
  {
    typep: "invertebrate",
    category: "Stink bugs",
    name: "Stink bugs"
  },
  {
    typep: "invertebrate",
    category: "Eastern Pine Bug",
    name: "Eastern Pine Bug"
  },
  {
    typep: "invertebrate",
    category: "Chinch bug",
    name: "Chinch bug"
  },
  {
    typep: "invertebrate",
    category: "Box Elder bug",
    name: "Box Elder bug"
  },
  {
    typep: "invertebrate",
    category: "cicada",
    name: "cicada"
  },
  {
    typep: "invertebrate",
    category: "Hoppers",
    name: "Hoppers"
  },
  {
    typep: "invertebrate",
    category: "Psyllids",
    name: "Psyllids"
  },
  {
    typep: "invertebrate",
    category: "Whiteflies",
    name: "Whiteflies"
  },
  {
    typep: "invertebrate",
    category: "Aphids",
    name: "Aphids"
  },
  {
    typep: "invertebrate",
    category: "Scale insects",
    name: "Scale insects"
  },
  {
    typep: "invertebrate",
    category: "Earwigs",
    name: "Earwigs"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Stored product"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Fabric "
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Black carpet"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Carpet "
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "confused Flour"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Drugstore"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Elm leaaf"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "False powder-post"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Flat-grain"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Flatheaded wood boring"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Furinture"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Deadwatch"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Fround"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Hide"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Incinerator"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "June"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Khapra"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Lafy"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Larder"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Large cabinet"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Longhorned"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Museum"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Powder post"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Red-flour"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Saw-toothed grain"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Timber"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Varied carpet"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Beetles"
  },
  {
    typep: "invertebrate",
    category: "Beetles",
    name: "Beetles"
  },
  {
    typep: "invertebrate",
    category: "Butterflies",
    name: "Butterflies"
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "Moths"
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "webbing clothes"
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "casemaking "
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "Indian meal "
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "Angoumois gain"
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "Clothes "
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "Indian meal "
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "Mediterranean flour"
  },
  {
    typep: "invertebrate",
    category: "Moths",
    name: "Tapestry"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Black Flies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Blowflies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Bottle flies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Cluster fly"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Deer flies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Flesh flies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Fruit flies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "gnats"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Horse flies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "House fly"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "midges"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "mosquitoes"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "Moth flies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "no-see-ums"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "punkies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "sand flies"
  },
  {
    typep: "invertebrate",
    category: "flies",
    name: "stable flies"
  },
  {
    typep: "invertebrate",
    category: "Crane fly",
    name: "Crane fly"
  },
  {
    typep: "invertebrate",
    category: "Mosquitoes",
    name: "Salt- water"
  },
  {
    typep: "invertebrate",
    category: "Mosquitoes",
    name: "Black salt-water"
  },
  {
    typep: "invertebrate",
    category: "Mosquitoes",
    name: "common Malaria"
  },
  {
    typep: "invertebrate",
    category: "Mosquitoes",
    name: "Western malaria"
  },
  {
    typep: "invertebrate",
    category: "Mosquitoes",
    name: "punctipennis"
  },
  {
    typep: "invertebrate",
    category: "Mosquitoes",
    name: "Northern house"
  },
  {
    typep: "invertebrate",
    category: "Mosquitoes",
    name: "Yellow-fever"
  },
  {
    typep: "invertebrate",
    category: "Mosquitoes",
    name: "Common tree hole"
  },
  {
    typep: "invertebrate",
    category: "Lovebugs",
    name: "Lovebugs"
  },
  {
    typep: "invertebrate",
    category: "fleas",
    name: "Cat"
  },
  {
    typep: "invertebrate",
    category: "fleas",
    name: "Dog"
  },
  {
    typep: "invertebrate",
    category: "fleas",
    name: "Human"
  },
  {
    typep: "invertebrate",
    category: "Honey Bees",
    name: "Honey Bees"
  },
  {
    typep: "invertebrate",
    category: "Yellow Jackets",
    name: "Yellow Jackets"
  },
  {
    typep: "invertebrate",
    category: "Bald Faced Hornets",
    name: "Bald Faced Hornets"
  },
  {
    typep: "invertebrate",
    category: "paperwasps",
    name: "paperwasps"
  },
  {
    typep: "invertebrate",
    category: "Carpenter Bees",
    name: "Carpenter Bees"
  },
  {
    typep: "invertebrate",
    category: "Mud-dabbers",
    name: "Mud-dabbers"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "Acrobat"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "Argentine"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "Carpenter"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "citronella"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "cornfield"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "crazy"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "honey"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "Imported fire "
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "Little Black Ant"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "Odorous"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "pavement"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "Pharoh's"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "silk"
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "Thief "
  },
  {
    typep: "invertebrate",
    category: "ants",
    name: "ants"
  },
  {
    typep: "invertebrate",
    category: "Alderflies",
    name: "Alderflies"
  },
  {
    typep: "invertebrate",
    category: "Dobsonflies",
    name: "Dobsonflies"
  },
  {
    typep: "invertebrate",
    category: "Fishflies",
    name: "Fishflies"
  },
  {
    typep: "invertebrate",
    category: "Snakeflies",
    name: "Snakeflies"
  },
  {
    typep: "invertebrate",
    category: "Lacewings",
    name: "Lacewings"
  },
  {
    typep: "invertebrate",
    category: "Antlions",
    name: "Antlions"
  },
  {
    typep: "invertebrate",
    category: "Owlflies",
    name: "Owlflies"
  },
  {
    typep: "invertebrate",
    category: "Twisted-winged Parasites",
    name: "Twisted-winged Parasites"
  },
  {
    typep: "invertebrate",
    category: "Scorpionflies",
    name: "Scorpionflies"
  },
  {
    typep: "invertebrate",
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




