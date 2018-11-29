Rails.configuration.stripe = {
 :publishable_key => Rails.application.credentials[:publishable_key_stripe],
 :secret_key      => Rails.application.credentials[:secret_key_stripe]
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
