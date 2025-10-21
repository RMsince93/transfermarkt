class AddAvatarToCoaches < ActiveRecord::Migration[8.0]
  def change
    add_column :coaches, :avatar, :string
  end
end
