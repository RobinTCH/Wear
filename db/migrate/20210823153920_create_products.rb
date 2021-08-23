class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :brand, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :picture
      t.integer :environment
      t.string :environment_details
      t.integer :labor
      t.string :labor_details
      t.integer :animals
      t.string :animal_details
      t.integer :composition
      t.string :composition_details

      t.timestamps
    end
  end
end
