class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :supplier_id
      t.string :name
      t.string :phone
      t.string :mobile
      t.string :email

      t.timestamps null: false
    end

    add_index :contacts, :email,                unique: true
    add_index :contacts, :supplier_id

  end
end
