class QueueOneWorker
  include ::Sidekiq::Worker

  sidekiq_options :queue => :queue_one_delivery

  def perform(*args)
    ::Sidekiq.logger.info("Queue 1 worker")
  end
end
