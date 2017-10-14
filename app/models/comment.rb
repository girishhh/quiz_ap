class Comment < ActiveRecord::Base
	def matches?(request)
		p "GET"
		p  request.remote_ip		
	end
end