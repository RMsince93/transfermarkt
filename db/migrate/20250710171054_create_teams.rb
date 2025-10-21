class CreateTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :stadium
      t.integer :squad_size
      t.float :average_age
      t.decimal :market_value_total
      t.string :current_coach
      t.string :logo

      t.timestamps
    end
  end
end
