class UserController < ApplicationController
	def authenticate
		error_msg = User.validate_sign_up_date(params)
		if error_msg
			return render :json => { :status => false , :message => error_msg}
		else
			return render :json => { :status => true , :message => "Successfully registered"}	
		end		
	end
end