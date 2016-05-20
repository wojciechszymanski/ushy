class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :course_id
      t.string :name
      t.text :description
      t.string :preparation_time
      t.string :cooking_time
      t.integer :serves

      t.timestamps null: false
    end
  end
end
