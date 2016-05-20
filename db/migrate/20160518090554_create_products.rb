class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_category_id
      t.string :name
      t.integer :unit_id
      t.integer :qty_in_stock, default: 0
      t.integer :qty_allocated, default: 0
      t.integer :low_stock_qty, default: 0
      t.integer :re_order_qty, default: 0
      t.integer :indicative_selling, default: 0

      t.timestamps null: false
    end

    add_index :products, :name
  end
end
