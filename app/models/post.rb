class Post < ActiveRecord::Base
	self.primary_key = 'guid'
	has_one :vote
	has_many :likes,dependent: :destroy	
end
