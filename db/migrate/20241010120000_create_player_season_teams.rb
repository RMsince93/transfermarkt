class CreatePlayerSeasonTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :player_season_teams do |t|
      t.references :player, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.references :season, null: false, foreign_key: true
      t.integer :shirt_number

      t.timestamps
    end

    add_index :player_season_teams, [:player_id, :season_id], unique: true
  end
end
