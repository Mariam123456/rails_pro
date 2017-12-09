# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:authentication => :plain,
:enable_starttls_auto => true,
:user_name => 'aa.20071663@gmail.com',
:password => 'a801182585',
domain: 'heroku.com'
}
