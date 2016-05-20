class MenuDish < ActiveRecord::Base
  belongs_to :menu  # foreign key - menu_id
  belongs_to :dish     # foreign key - dish_id
  belongs_to :course     # foreign key - course_id
end
