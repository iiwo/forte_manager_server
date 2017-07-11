ForteManager.setup do |config|
  config.secret_token = ENV['FORTE_MANAGER_TOKEN']
  config.server = true
end
