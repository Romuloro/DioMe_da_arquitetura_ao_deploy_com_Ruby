class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(custumer_id)
    user = User.find(custumer_id)
    puts "hello from sidekiq"
    puts "Order created from #{user.email}"
  end
end
