class AddColumnSupplierSku < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :supplier_SKU, :string
  end
end
