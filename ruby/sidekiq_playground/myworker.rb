require "sidekiq"

Sidekiq.configure_client do |config|
  config.redis = { db: 1 }
end

Sidekiq.configure_server do |config|
  config.redis = { db: 1 }
end


class MyWorker

  include Sidekiq::Worker

  def perform(name)
    puts "Hello , #{name}"
  end
end
