# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#Sets up mailgun
  ActionMailer::Base.smtp_settings = {
	:authentication => :plain,
    :address =>		ENV['SMTP_SERVICENAME'],
    :port =>		ENV['SMTP_PORT'],
    :domain =>		ENV['SMTP_DOMAIN'],
    :user_name =>	ENV['SMTP_USERNAME'],
    :password =>	ENV['SMTP_PASSORD']
  }