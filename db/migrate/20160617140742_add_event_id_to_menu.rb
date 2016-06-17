class AddEventIdToMenu < ActiveRecord::Migration
  def change
  	add_column :menus, :event_id, :integer, default: 0
  end
end
