puts "🌍 Creating continents..."

continents = [
  "Africa",
  "Antarctica",
  "Asia",
  "Europe",
  "North America",
  "Oceania",
  "South America"
]

continents.each do |name|
  Continent.find_or_create_by!(name: name)
end

puts "Continents successfully created!"
