class PostScheduleWorker
  include Sidekiq::Worker

  def perform(post)
    post.status = "published"
  end
end
