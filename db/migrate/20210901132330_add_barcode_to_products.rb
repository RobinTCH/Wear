class AddBarcodeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :barcode, :string
  end
end
