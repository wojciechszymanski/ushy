class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :name

      t.timestamps null: false
    end

    add_index :product_categories, :name
  end
end
