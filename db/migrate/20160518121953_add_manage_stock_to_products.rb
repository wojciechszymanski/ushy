class AddManageStockToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :manage_stock, :integer, default: 0
  end
end
