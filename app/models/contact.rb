class Contact < ActiveRecord::Base
	establish_connection(:adapter => "postgresql",:database => "old_myfam_db",:username=>"postgres",:password=>"postgres")

	def get_phone(num)
		p "NUM"
		p num		
	end

end