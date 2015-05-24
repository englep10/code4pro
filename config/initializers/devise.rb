Devise.setup do |config|

  config.mailer_sender = ' Philip @ Code4Pro <no-reply@code4pro.com>'


  require 'devise/orm/active_record'


  config.case_insensitive_keys = [ :email ]


  config.strip_whitespace_keys = [ :email ]


  config.skip_session_storage = [:http_auth]

 
  config.stretches = Rails.env.test? ? 1 : 10

 
  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 8..128


  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  require 'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '486770013710-csqvieofg98scgoggc8ubgblh6o02892.apps.googleusercontent.com', 'LDGakqjeq5E7-Se4Ac2TKX_v', {access_type: "offline", approval_prompt: ""}

  require 'omniauth-facebook'
    config.omniauth :facebook, '1606241839613867', '5e35c580909cb8c6fe579fa74bdfb39a'


end
