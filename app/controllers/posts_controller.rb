class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  # GET /users/:user_id/posts/:id
  def show
    params[:id]
  end
end
