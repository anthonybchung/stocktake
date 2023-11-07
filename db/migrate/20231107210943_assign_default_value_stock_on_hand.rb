class AssignDefaultValueStockOnHand < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :stock_on_hand, :integer, default: 0
  end
end
