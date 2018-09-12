class HomeController < ApplicationController

  def index
    @posts = Post.order(updated_at: :desc)
    @published_posts = @posts.select{|post| post.published?}
    @scheduled_posts = @posts.select{|post| post.scheduled?}
    @paginated_posts = @posts.where("status": "published").paginate(:page => params[:page],:per_page => 15)
  end


end
