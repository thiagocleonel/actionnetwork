class HomeController < ApplicationController

  def index
    @posts = Post.order(updated_at: :desc)
    @published_posts = @posts.select{|post| post.published?}
    @scheduled_posts = @posts.select{|post| post.scheduled?}
    @paginated_posts = @posts.where("status": "published").paginate(:page => params[:page],:per_page => 15)

    next_job = Sidekiq::ScheduledSet.new.first
    if(next_job)
      @next_one = Post.find(next_job.args.first).title
      @at = next_job.at
    else
      @next_one = "None"
    end

  end

end
