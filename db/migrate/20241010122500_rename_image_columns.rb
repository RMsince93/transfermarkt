class RenameImageColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column :coaches, :avatar, :avatar_url if column_exists?(:coaches, :avatar)
    rename_column :teams, :logo, :logo_url if column_exists?(:teams, :logo)
  end
end
