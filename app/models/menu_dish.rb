# == Schema Information
#
# Table name: menu_dishes
#
#  id         :integer          not null, primary key
#  menu_id    :integer
#  course_id  :integer
#  dish_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MenuDish < ActiveRecord::Base
  belongs_to :menu  # foreign key - menu_id
  belongs_to :dish     # foreign key - dish_id
  belongs_to :course     # foreign key - course_id
end
