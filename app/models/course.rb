class Course < ActiveRecord::Base
	validates_presence_of :name

	default_scope { order('priority DESC') }
end
