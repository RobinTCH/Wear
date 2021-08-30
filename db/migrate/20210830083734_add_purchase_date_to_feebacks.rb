class AddPurchaseDateToFeebacks < ActiveRecord::Migration[6.0]
  def change
    add_column :feedbacks, :purchase_date, :date
  end
end
