# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.config.frameworks = [:action_web_service,:action_mailer,:active_record]
