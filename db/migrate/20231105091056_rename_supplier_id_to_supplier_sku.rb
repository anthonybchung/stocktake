class RenameSupplierIdToSupplierSku < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :supplier_id, :supplier_SKU
  end
end
