if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['pk_test_2h3drgxBAxa5GbVSs9MLYW3q'],
    :secret_key => ENV['sk_test_hQT5NKioyqEJdlUBPlZHsAMg']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_2h3drgxBAxa5GbVSs9MLYW3q',
    :secret_key => 'sk_test_hQT5NKioyqEJdlUBPlZHsAMg'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
