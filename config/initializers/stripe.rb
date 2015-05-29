Rails.configuration.stripe = {
  :publishable_key => 'pk_test_hrsdTOCmWCjfqlAGr6r3jTL6',
  :secret_key      => 'sk_test_pN8QTaH0PAAX43W4axlLJWgM'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]