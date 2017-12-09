# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:authentication => :plain,
:enable_starttls_auto => true,
:user_name => 'emanhamdancf@gmail.com',
:password => '12345678!',
domain: 'heroku.com'
}
