class AddQtyRequiredToDishes < ActiveRecord::Migration
  def change
  	add_column :dishes, :qty_required, :integer, default: 0
  end
end
