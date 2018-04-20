class Comment < ActiveResource::Base
	self.site = "http://localhost:3000"

	def matches?(request)		
	end

end