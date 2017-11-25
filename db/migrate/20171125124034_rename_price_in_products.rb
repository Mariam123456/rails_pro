class RenamePriceInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :price, :prices
  end
end
