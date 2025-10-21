puts "🌟 Creating Coaches..."

coaches = [
  { name: "Pep Guardiola", nationality: "Spain", birthdate: Date.new(1971, 1, 18) },
  { name: "Jürgen Klopp", nationality: "Germany", birthdate: Date.new(1967, 6, 16) },
  { name: "Mikel Arteta", nationality: "Spain", birthdate: Date.new(1982, 3, 26) },
  { name: "Erik ten Hag", nationality: "Netherlands", birthdate: Date.new(1970, 2, 2) },
  { name: "Eddie Howe", nationality: "England", birthdate: Date.new(1977, 11, 29) },
  { name: "Sean Dyche", nationality: "England", birthdate: Date.new(1971, 6, 28) },
  { name: "Gary O'Neil", nationality: "England", birthdate: Date.new(1983, 5, 18) },
  { name: "Marco Silva", nationality: "Portugal", birthdate: Date.new(1977, 7, 12) },
  { name: "Roberto De Zerbi", nationality: "Italy", birthdate: Date.new(1979, 5, 6) },
  { name: "Brendan Rodgers", nationality: "Northern Ireland", birthdate: Date.new(1973, 1, 26) },
  { name: "David Moyes", nationality: "Scotland", birthdate: Date.new(1963, 4, 25) },
  { name: "Thomas Frank", nationality: "Denmark", birthdate: Date.new(1973, 10, 9) },
  { name: "Julian Nagelsmann", nationality: "Germany", birthdate: Date.new(1987, 7, 23) },
  { name: "Unai Emery", nationality: "Spain", birthdate: Date.new(1971, 11, 3) },
  { name: "Jesse Marsch", nationality: "USA", birthdate: Date.new(1973, 11, 8) },
  { name: "Rob Edwards", nationality: "Wales", birthdate: Date.new(1982, 3, 18) },
  { name: "Marco Rose", nationality: "Germany", birthdate: Date.new(1976, 9, 11) },
  { name: "Peter Bosz", nationality: "Netherlands", birthdate: Date.new(1963, 11, 21) },
  { name: "Matthias Jaissle", nationality: "Germany", birthdate: Date.new(1988, 4, 5) },
  { name: "Vítor Pereira", nationality: "Portugal", birthdate: Date.new(1968, 7, 26) },
  { name: "Sérgio Conceição", nationality: "Portugal", birthdate: Date.new(1974, 11, 15) },
  { name: "Rúben Amorim", nationality: "Portugal", birthdate: Date.new(1985, 1, 27) },
  { name: "Francesco Farioli", nationality: "Italy", birthdate: Date.new(1989, 6, 10) },
  { name: "Arne Slot", nationality: "Netherlands", birthdate: Date.new(1978, 11, 11) },
  { name: "Jorge Jesus", nationality: "Portugal", birthdate: Date.new(1954, 7, 24) }
]

# Eliminar possíveis duplicados pelo nome
coaches.uniq! { |c| c[:name] }

coaches.each do |coach|
  country = Country.find_by(name: coach[:nationality])
  if country.nil?
    puts "⚠️ Country not found for coach #{coach[:name]} (#{coach[:nationality]})"
    next
  end

  Coach.find_or_create_by!(
    name: coach[:name],
    country: country,
    birthdate: coach[:birthdate]
  )
end

puts "✅ Coaches created successfully!"
