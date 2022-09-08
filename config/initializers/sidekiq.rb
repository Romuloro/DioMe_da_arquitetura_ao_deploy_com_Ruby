Sidekiq::configure_server do |config|
  config.redis = {url: "redis://localhost:6379/0"}
  config.redis = { password: ENV["REDIS_PASSWORD"] }
end

Sidekiq::configure_client do |config|
  config.redis = {url: "redis://localhost:6379/0"}
  config.redis = { password: ENV["REDIS_PASSWORD"] }
end