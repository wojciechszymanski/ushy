class AddContactToCustomer < ActiveRecord::Migration
  def change
  	add_column :customers, :phone, :string
  	add_column :customers, :mobile, :string
  	add_column :customers, :email, :string
  end
end
