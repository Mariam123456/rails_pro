if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_enTp0MLVgaoWocnaLuNndxbb',
    secret_key: 'sk_test_WQG3Uc1iXKZI58o6k0upFTAR'
  }
end
Stripe.api_key = Rails.configuration.stripe[:secret_key]
