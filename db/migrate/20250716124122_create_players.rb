class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :name
      t.references :country, null: false, foreign_key: true
      t.date :birth_date
      t.integer :height
      t.integer :weight
      t.references :position, null: false, foreign_key: true
      t.decimal :market_value
      t.string :preferred_foot

      t.timestamps
    end
  end
end
