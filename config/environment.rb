# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#Sets up mailgun
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :authentication => :plain,
    :address => "smtp.mailgun.org",
    :port => 587,
    :domain => "sandbox0a8b787e4ffd4190bc8da03ef5cfce31.mailgun.org",
    :user_name => "postmaster@sandbox0a8b787e4ffd4190bc8da03ef5cfce31.mailgun.org",
    :password => "442bbbe79b36285edeb5eb6394771bd7-7efe8d73-1fc84ce6"
  }