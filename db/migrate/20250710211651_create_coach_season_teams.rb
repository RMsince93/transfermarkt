class CreateCoachSeasonTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :coach_season_teams do |t|
      t.references :coach, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
