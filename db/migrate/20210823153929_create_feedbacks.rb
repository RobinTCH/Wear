class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :average_durability
      t.string :comment
      t.string :picture_worn

      t.timestamps
    end
  end
end
