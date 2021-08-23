class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :usernamne
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
