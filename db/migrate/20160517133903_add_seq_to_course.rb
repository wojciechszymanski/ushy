class AddSeqToCourse < ActiveRecord::Migration
  def change
  	add_column :courses, :priority, :integer, default: 0
  end
end
