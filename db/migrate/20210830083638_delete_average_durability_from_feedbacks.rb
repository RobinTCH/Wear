class DeleteAverageDurabilityFromFeedbacks < ActiveRecord::Migration[6.0]
  def change
    remove_column :feedbacks, :average_durability
  end
end
