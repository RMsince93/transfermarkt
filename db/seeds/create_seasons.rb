puts "🔄 Creating seasons..."

Season.find_or_create_by!(name: "2023/2024", start_year: 2023, end_year: 2024)
Season.find_or_create_by!(name: "2024/2025", start_year: 2024, end_year: 2025)
Season.find_or_create_by!(name: "2025/2026", start_year: 2025, end_year: 2026)

puts "Seasons successfully created!"
