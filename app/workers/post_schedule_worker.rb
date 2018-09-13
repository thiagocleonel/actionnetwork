class PostScheduleWorker
  include Sidekiq::Worker

  def perform(post_id)
    post = Post.find(post_id)
    post.published!
    post.save
  end
end
