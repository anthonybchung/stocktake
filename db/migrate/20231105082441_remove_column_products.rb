class RemoveColumnProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :string

  end
end
