class Quiz < ActiveRecord::Base
	include QuizzesHelper

	def self.test
		test123
	end

end
