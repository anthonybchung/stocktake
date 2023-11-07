class AddSohToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :stock_on_hand, :integer
  end
end
