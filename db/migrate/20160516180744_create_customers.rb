class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :county
      t.string :postcode
      t.text :notes

      t.timestamps null: false
    end

    add_index :customers, :email,                unique: true
    
  end
end
