# class PostController < ApplicationController
#   def index
#     # puts :posts
#   end

#   def show
#     # user_id = params[:id].to_i
#     # @posts = Post.where(user_id == :author_id)
#   end
# end

class PostsController < ApplicationController
  def index
    render 'posts_index'
  end

  def show
    render 'posts_show'
  end
end
