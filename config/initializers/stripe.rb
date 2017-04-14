if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_2h3drgxBAxa5GbVSs9MLYW3q',
    :secret_key => 'sk_test_hQT5NKioyqEJdlUBPlZHsAMg'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
