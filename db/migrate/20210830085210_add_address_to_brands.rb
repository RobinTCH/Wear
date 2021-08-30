class AddAddressToBrands < ActiveRecord::Migration[6.0]
  def change
    add_column :brands, :address, :string
  end
end
