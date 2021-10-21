class QueueTwoWorker
  include ::Sidekiq::Worker

  sidekiq_options :queue => :queue_two_delivery

  def perform
    ::Sidekiq.logger.info("Queue 2 worker")
  end
end
