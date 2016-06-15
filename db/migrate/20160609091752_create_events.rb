class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.date :event_date
      t.integer :customer_id
      t.text :venue
      t.text :event_details
      t.integer :covers, default: 0, null: false
      t.integer :vegetarian, default: 0, null: false
      t.integer :coeliac, default: 0, null: false
      t.integer :sugar_free, default: 0, null: false
      t.integer :allergies, default: 0, null: false

      t.timestamps null: false
    end
  end
end
