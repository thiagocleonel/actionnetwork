class PostController < ApplicationController

  before_action :validate_request

  def schedule
    post = Post.find(params['post_id'])
    PostScheduleWorker.perform_in(params['time'].to_i.minutes,post.id)
    post.scheduled!
    post.save
    redirect_to :root
  end

  def validate_request
    if ( !(params[:post_id] && params[:time]) || !(['5', '30', '1440'].include? params[:time]) )
      (render file:"public/400.html", status: :bad_request)
      return
    end
  end

end
