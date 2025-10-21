puts "⚽ Creating positions"

positions = [
  [ "Goalkeeper", "GK" ],
  [ "Right Back", "RB" ],
  [ "Left Back", "LB" ],
  [ "Center Back", "CB" ],
  [ "Defensive Midfielder", "DMF" ],
  [ "Central Midfielder", "CMF" ],
  [ "Attacking Midfielder", "AMF" ],
  [ "Right Midfielder", "RMF" ],
  [ "Left Midfielder", "LMF" ],
  [ "Right Winger", "RW" ],
  [ "Left Winger", "LW" ],
  [ "Second Striker", "SS" ],
  [ "Center Forward", "CF" ],
  [ "Striker", "ST" ]
]

positions.each do |name, acronym|
  Position.find_or_create_by!(name: name, acronym: acronym)
end

puts "All positions were successfully created!"
