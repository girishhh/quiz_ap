class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.  
  # before_action :authenticate_authe!
  # protect_from_forgery with: :exception
  # before_action :check_params,if: :devise_controller?

  def check_params
		devise_parameter_sanitizer.permit(:sign_up) do |user_params|
		    user_params.permit!
		end
  end    

end
