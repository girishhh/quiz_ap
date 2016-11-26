class User < ActiveRecord::Base	
	validates_uniqueness_of :email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	def self.validate_sign_up_date(params)
		error_message = nil		
		if params[:email].present?			
			if params[:email].downcase.strip() !~ VALID_EMAIL_REGEX
				error_message = "Enter valid email id"						
			end
		else
			error_message = "Email should be present"			
		end

		if params[:password].size >= 6			
			unless params[:password] == params[:confirm_password]
				error_message += "Password and confirm password dont match"	
			end
		else
			error_message += "Minimum password length is 6"
		end

		if params[:phone].present?
			valid_phone = Integer(params[:phone]) rescue false
			unless valid_phone
				error_message += "Enter valid phone number"
			end
		end
		error_message
	end
end




{"user_name"=>"gjgkgk", 
	"email_id"=>"cjcjv", 
	"password"=>"[FILTERED]", 
	"confirm_password"=>"[FILTERED]", 
	"address"=>"nvnvn", "phone"=>"1234567890"}
