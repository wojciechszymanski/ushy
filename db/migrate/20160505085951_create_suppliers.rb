class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|

      t.string   :company_name, index: true
      t.string   :address1
      t.string   :address2
      t.string   :city
      t.string   :county
      t.string   :postcode
      t.text	 :notes

      t.timestamps null: false
    end
  end
end
