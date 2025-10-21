puts "🌍 Creating countries"

africa = Continent.find_by!(name: "Africa")
asia   = Continent.find_by!(name: "Asia")
antarctica = Continent.find_by!(name: "Antarctica")
europe = Continent.find_by!(name: "Europe")
north_america = Continent.find_by!(name: "North America")
oceania   = Continent.find_by!(name: "Oceania")
south_america = Continent.find_by!(name: "South America")

african_countries = [
  "Algeria", "Angola", "Benin", "Botswana", "Burkina Faso",
  "Burundi", "Cameroon", "Cape Verde", "Central African Republic", "Chad",
  "Comoros", "Congo", "Democratic Republic of the Congo", "Djibouti", "Egypt",
  "Equatorial Guinea", "Eritrea", "Eswatini", "Ethiopia", "Gabon",
  "Gambia", "Ghana", "Guinea", "Guinea-Bissau", "Ivory Coast",
  "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar",
  "Malawi", "Mali", "Mauritania", "Mauritius", "Morocco",
  "Mozambique", "Namibia", "Niger", "Nigeria", "Rwanda",
  "São Tomé and Príncipe", "Senegal", "Seychelles", "Sierra Leone", "Somalia",
  "South Africa", "South Sudan", "Sudan", "Tanzania", "Togo",
  "Tunisia", "Uganda", "Zambia", "Zimbabwe"
]

asian_countries = [
  "Afghanistan", "Armenia", "Azerbaijan", "Bahrain", "Bangladesh",
  "Bhutan", "Brunei", "Cambodia", "China", "Cyprus",
  "Georgia", "India", "Indonesia", "Iran", "Iraq",
  "Israel", "Japan", "Jordan", "Kazakhstan", "Kuwait",
  "Kyrgyzstan", "Laos", "Lebanon", "Malaysia", "Maldives",
  "Mongolia", "Myanmar", "Nepal", "North Korea", "Oman",
  "Pakistan", "Palestine", "Philippines", "Qatar", "Saudi Arabia",
  "Singapore", "South Korea", "Sri Lanka", "Syria", "Taiwan",
  "Tajikistan", "Thailand", "Timor-Leste", "Turkey", "Turkmenistan",
  "United Arab Emirates", "Uzbekistan", "Vietnam", "Yemen"
]

antarctica_countries = [
  "Antarctica"
]

european_countries = [
  "Albania", "Andorra", "Armenia", "Austria", "Azerbaijan",
  "Belarus", "Belgium", "Bosnia and Herzegovina", "Bulgaria", "Croatia",
  "Cyprus", "Czech Republic", "Denmark", "England", "Estonia",
  "Finland", "France", "Georgia", "Germany", "Greece",
  "Hungary", "Iceland", "Ireland", "Italy", "Kazakhstan",
  "Kosovo", "Latvia", "Liechtenstein", "Lithuania", "Luxembourg",
  "Malta", "Monaco", "Moldova", "Montenegro", "Netherlands",
  "North Macedonia", "Northern Ireland", "Norway", "Poland", "Portugal",
  "Romania", "Russia", "San Marino", "Scotland", "Serbia",
  "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland",
  "Turkey", "Ukraine", "Vatican City", "Wales"
]

north_america_countries = [
  "Antigua and Barbuda", "Bahamas", "Barbados", "Belize", "Canada",
  "Costa Rica", "Cuba", "Dominica", "Dominican Republic", "El Salvador",
  "Grenada", "Guatemala", "Haiti", "Honduras", "Jamaica",
  "Mexico", "Nicaragua", "Panama", "Saint Kitts and Nevis", "Saint Lucia",
  "Saint Vincent and the Grenadines", "Trinidad and Tobago", "United States"
]

oceania_countries = [
  "Australia", "Fiji", "Kiribati", "Marshall Islands", "Micronesia",
  "Nauru", "New Zealand", "Palau", "Papua New Guinea", "Samoa",
  "Solomon Islands", "Tonga", "Tuvalu", "Vanuatu"
]

south_america_countries = [
  "Argentina", "Bolivia", "Brazil", "Chile", "Colombia",
  "Ecuador", "Guyana", "Paraguay", "Peru", "Suriname",
  "Uruguay", "Venezuela"
]


african_countries.each do |country_name|
  Country.find_or_create_by!(name: country_name, continent: africa)
end

asian_countries.each do |country_name|
  Country.find_or_create_by!(name: country_name, continent: asia)
end

antarctica_countries.each do |country_name|
  Country.find_or_create_by!(name: country_name, continent: antarctica)
end

european_countries.each do |country_name|
  Country.find_or_create_by!(name: country_name, continent: europe)
end

north_america_countries.each do |country_name|
  Country.find_or_create_by!(name: country_name, continent: north_america)
end

oceania_countries.each do |country_name|
  Country.find_or_create_by!(name: country_name, continent: oceania)
end

south_america_countries.each do |country_name|
  Country.find_or_create_by!(name: country_name, continent: south_america)
end

puts "All countries were successfully created!"
