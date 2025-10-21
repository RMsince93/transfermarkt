json.extract! player, :id, :name, :country_id, :birth_date, :height, :weight, :position_id, :market_value, :preferred_foot, :created_at, :updated_at
json.url player_url(player, format: :json)
