class Rename < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :prices, :price
  end
end
