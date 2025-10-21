class CreateCoaches < ActiveRecord::Migration[8.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.date :birthdate
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
