# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{  { name: 'Copenhagen' }])
#   Mayor.creat city: cities.first)
time_zones = ["International Date Line West", "Midway Island", "American Samoa", "Hawaii", "Alaska", "Pacific Time (US & Canada)", "Tijuana",
  "Mountain Time (US & Canada)", "Arizona", "Chihuahua", "Mazatlan", "Central Time (US & Canada)", "Saskatchewan", "Guadalajara",
  "Mexico City", "Monterrey", "Central America", "Eastern Time (US & Canada)", "Indiana (East)", "Bogota", "Lima", "Quito",
  "Atlantic Time (Canada)", "Caracas", "La Paz", "Santiago", "Newfoundland", "Brasilia", "Buenos Aires", "Montevideo",
  "Georgetown", "Greenland", "Mid-Atlantic", "Azores", "Cape Verde Is.", "Dublin", "Edinburgh", "Lisbon", "London", "Casablanca",
  "Monrovia", "UTC", "Belgrade", "Bratislava", "Budapest", "Ljubljana", "Prague", "Sarajevo", "Skopje", "Warsaw", "Zagreb",
  "Brussels", "Copenhagen", "Madrid", "Paris", "Amsterdam", "Berlin", "Bern", "Rome", "Stockholm", "Vienna","West Central Africa",
  "Bucharest", "Cairo", "Helsinki", "Kyiv", "Riga", "Sofia", "Tallinn", "Vilnius", "Athens", "Istanbul", "Minsk", "Jerusalem",
  "Harare", "Pretoria", "Moscow", "St. Petersburg", "Volgograd", "Kuwait", "Riyadh", "Nairobi", "Baghdad", "Tehran", "Abu Dhabi",
  "Muscat", "Baku", "Tbilisi", "Yerevan", "Kabul", "Ekaterinburg", "Islamabad", "Karachi", "Tashkent", "Chennai", "Kolkata", "Mumbai",
  "New Delhi", "Kathmandu", "Astana", "Dhaka", "Sri Jayawardenepura", "Almaty", "Novosibirsk", "Rangoon", "Bangkok", "Hanoi", "Jakarta",
  "Krasnoyarsk", "Beijing", "Chongqing", "Hong Kong", "Urumqi", "Kuala Lumpur", "Singapore", "Taipei", "Perth", "Irkutsk", "Ulaanbaatar",
  "Seoul", "Osaka", "Sapporo", "Tokyo", "Yakutsk", "Darwin", "Adelaide", "Canberra", "Melbourne", "Sydney", "Brisbane", "Hobart",
  "Vladivostok", "Guam", "Port Moresby", "Magadan", "Solomon Is.", "New Caledonia", "Fiji", "Kamchatka", "Marshall Is.", "Auckland",
  "Wellington", "Nuku'alofa" , "Tokelau Is.", "Chatham Is.", "Samoa"]
  time_zones.each do |zone_name|
    zone = Zone.new
    zone.name = zone_name
    zone.save
  end
