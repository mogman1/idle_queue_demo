class QueueDefaultWorker
  include ::Sidekiq::Worker

  def perform
    ::Sidekiq.logger.info("Queue Default worker")
  end
end
