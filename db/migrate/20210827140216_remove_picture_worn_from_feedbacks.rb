class RemovePictureWornFromFeedbacks < ActiveRecord::Migration[6.0]
  def change
    remove_column :feedbacks, :picture_worn, :string
  end
end
