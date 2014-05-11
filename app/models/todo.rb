class Todo < ActiveRecord::Base
	default_scope { where('created_at >= ?', 8.days.ago) }
end 

#add a default scope and calling a Proc  Proc Objects.  