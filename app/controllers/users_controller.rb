# class UserController < ApplicationController
#   def index
#     puts :users
#   end

#   def show
#     user_id = params[:id].to_i
#     puts User.find(user_id)
#   end
# end

class UsersController < ApplicationController
  def index
    render 'users_index'
  end

  def show
    # @user = User.find(params[:id])
    render 'users_show'
  end
end
