class ChangeAnimalsColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :animals, :animal
  end
end
