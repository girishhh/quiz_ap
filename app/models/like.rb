class Like < ActiveRecord::Base	
	belongs_to :person 
	# validates_associated :person
	# belongs_to :post
	after_touch do 
		p "LIKE"
	end

	after_validation do 
		p "after_validation"
	end

	# before_validation do
	# 	p "before_validation"
	# end

	after_update do 
		p "after_update"
	end
end