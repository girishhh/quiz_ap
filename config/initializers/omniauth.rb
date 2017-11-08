# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2,'509239009340-irlmludi1k3eldpp4si88vdkpo7ittgo.apps.googleusercontent.com','-YpU-0cWImY9CagGxEwaSlJr'
# end

ActiveRecord::Base.class_eval do
	def model_name
		p "5555555555"
	end
end