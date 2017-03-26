if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['pk_live_vjjp5Qgly97SGk6W9bb991CA'],
    :secret_key => ENV['sk_live_A6fpu9v91IQBPrLsneo7bDDw']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_2h3drgxBAxa5GbVSs9MLYW3q',
    :secret_key => 'sk_test_hQT5NKioyqEJdlUBPlZHsAMg'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
