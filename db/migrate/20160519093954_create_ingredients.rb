class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :product_id
      t.integer :dish_id
      t.float :qty
      t.string :special_instructions

      t.timestamps null: false
    end
  end
end
