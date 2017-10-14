class Mobile < ActiveRecord::Base	
	has_many :batteries,foreign_key: 'name'
end