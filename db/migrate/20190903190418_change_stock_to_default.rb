class ChangeStockToDefault < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :stock, :in_stock
    change_column :products, :in_stock, :boolean, default: true
  end
end
