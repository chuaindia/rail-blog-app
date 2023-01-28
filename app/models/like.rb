class Like < ApplicationRecord
  after_save :updates_the_likes_counter

  belongs_to :user, class_name: 'User', foreign_key: 'AuthorId'
  belongs_to :post, class_name: 'Post', foreign_key: 'PostId'

  def updates_the_likes_counter
    post.increment!(:LikeCounter)
  end

  private :updates_the_likes_counter
end
