# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#Sets up mailgun
config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
	:authentication => :plain,
    :address =>		ENV['SMTP_SERVICENAME'],
    :port =>		ENV['SMTP_PORT'],
    :domain =>		ENV['SMTP_DOMAIN'],
    :user_name =>	ENV['SMTP_USERNAME'],
    :password =>	ENV['SMTP_PASSORD'],
	:enable_starttls_auto => true,
  }