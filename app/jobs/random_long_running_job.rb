class RandomLongRunningJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep(Random.rand * 10)
  end
end
