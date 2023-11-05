class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_id
      t.string :supplier_id
      t.string :manufacturer_SKU
      t.text :short_description
      t.string :product_type
      t.string :string

      t.timestamps
    end
  end
end
