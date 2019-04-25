# Load the Rails application.
require_relative 'application'

MyStore::Application.configure do
config.action_mailer.delivery_method = :smtp 
end

# Initialize the Rails application.
Rails.application.initialize!
