puts "🌍 Creating teams..."

logo_directory = Rails.root.join("app/assets/images/team_logos")

teams_data = [
  { name: "Arsenal FC", city: "London", stadium: "Emirates Stadium", current_coach: "Mikel Arteta", logo_filename: "arsenal.png" },
  { name: "Aston Villa FC", city: "Birmingham", stadium: "Villa Park", current_coach: "Unai Emery", logo_filename: "aston_villa.png" },
  { name: "AFC Bournemouth", city: "Bournemouth", stadium: "Vitality Stadium", current_coach: "Andoni Iraola", logo_filename: "bournemouth.png" },
  { name: "Brentford FC", city: "London", stadium: "Gtech Community Stadium", current_coach: "Keith Andrews", logo_filename: "brentford.png" },
  { name: "Brighton & Hove Albion", city: "Brighton", stadium: "Amex Stadium", current_coach: "Fabian Hürzeler", logo_filename: "brighton.png" },
  { name: "Burnley FC", city: "Burnley", stadium: "Turf Moor", current_coach: "Scott Parker", logo_filename: "burnley.png" },
  { name: "Chelsea FC", city: "London", stadium: "Stamford Bridge", current_coach: "Enzo Maresca", logo_filename: "chelsea.png" },
  { name: "Crystal Palace FC", city: "London", stadium: "Selhurst Park", current_coach: "Oliver Glasner", logo_filename: "crystal_palace.png" },
  { name: "Everton FC", city: "Liverpool", stadium: "Goodison Park", current_coach: "David Moyes", logo_filename: "everton.png" },
  { name: "Fulham FC", city: "London", stadium: "Craven Cottage", current_coach: "Marco Silva", logo_filename: "fulham.png" },
  { name: "Leeds United FC", city: "Leeds", stadium: "Elland Road", current_coach: "Daniel Farke", logo_filename: "leeds_united.png" },
  { name: "Liverpool FC", city: "Liverpool", stadium: "Anfield", current_coach: "Arne Slot", logo_filename: "liverpool.png" },
  { name: "Manchester City FC", city: "Manchester", stadium: "Etihad Stadium", current_coach: "Pep Guardiola", logo_filename: "manchester_city.png" },
  { name: "Manchester United FC", city: "Manchester", stadium: "Old Trafford", current_coach: "Rúben Amorim", logo_filename: "manchester_united.png" },
  { name: "Newcastle United", city: "Newcastle", stadium: "St James' Park", current_coach: "Eddie Howe", logo_filename: "newcastle.png" },
  { name: "Nottingham Forest", city: "Nottingham", stadium: "City Ground", current_coach: "Sean Dyche", logo_filename: "nottingham.png" },
  { name: "Sunderland AFC", city: "Sunderland", stadium: "Stadium of Light", current_coach: "Régis Le Bris", logo_filename: "sunderland.png" },
  { name: "Tottenham Hotspur", city: "London", stadium: "Tottenham Hotspur Stadium", current_coach: "Thomas Frank", logo_filename: "tottenham.png" },
  { name: "West Ham United", city: "London", stadium: "London Stadium", current_coach: "Nuno Espírito Santo", logo_filename: "west_ham.png" },
  { name: "Wolverhampton Wanderers", city: "Wolverhampton", stadium: "Molineux Stadium", current_coach: "Vítor Pereira", logo_filename: "wolverhampton.png" },
  { name: "FC Porto", city: "Porto", stadium: "Estádio do Dragão", current_coach: "Francesco Farioli", logo_filename: "fc_porto.png" },
  { name: "SL Benfica", city: "Lisbon", stadium: "Estádio da Luz", current_coach: "José Mourinho", logo_filename: "benfica.png" },
  { name: "Sporting CP", city: "Lisbon", stadium: "Estádio José Alvalade", current_coach: "Rui Borges", logo_filename: "sporting.png" }
]

missing_logos = []

teams_data.each do |team_attributes|
  logo_filename = team_attributes.delete(:logo_filename)
  logo_path = logo_filename ? logo_directory.join(logo_filename) : nil
  team = Team.find_or_initialize_by(name: team_attributes[:name])
  team.assign_attributes(team_attributes)

  if logo_path&.exist?
    team.logo_url = "team_logos/#{logo_filename}"
  elsif logo_filename
    missing_logos << { team: team.name, file: logo_filename }
    team.logo_url = nil
  end

  team.save!

  next unless logo_path&.exist?

  next if team.logo.attached? && team.logo.filename.to_s == logo_filename

  File.open(logo_path, "rb") do |file|
    team.logo.attach(io: file, filename: logo_filename)
  end
end

missing_logos.each do |entry|
  puts "⚠️  Logo file não encontrado para #{entry[:team]} (#{entry[:file]})"
end

puts "Teams successfully created!"
