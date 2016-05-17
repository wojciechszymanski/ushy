class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :short
      t.string :long

      t.timestamps null: false
    end
  end
end
