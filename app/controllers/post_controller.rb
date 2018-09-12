class PostController < ApplicationController
  def schedule
    if(params[:id] && params[:time])
      flash[:notice] = "abcdef"
    end
    render status: :ok
  end

end
