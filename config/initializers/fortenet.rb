Fortenet.configure do |config|
  PROXIMO = URI.parse(ENV['PROXIMO_URL'])

  config.endpoint = ENV['FORTE_ENDPOINT']
  config.api_login_id = ENV['FORTE_API_LOGIN_ID']
  config.secure_transaction_key = ENV['FORTE_SECURE_TRANSACTION_KEY']
  config.account_id = ENV['FORTE_ACCOUNT_ID']
  config.location_id = ENV['FORTE_LOCATION_ID']
  config.debug = Rails.env.development?
  config.debug_output = $stdout
  config.proxy_host = PROXIMO.host
  config.proxy_port = 80
  config.proxy_user = PROXIMO.user
  config.proxy_password = PROXIMO.password
end
