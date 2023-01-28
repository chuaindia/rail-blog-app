class Comment < ApplicationRecord
  
  after_save :update_the_comments_counter

  belongs_to :user, class_name: 'User', foreign_key: 'AuthorId'
  belongs_to :post, class_name: 'Post', foreign_key: 'PostId'

  def update_the_comments_counter
    post.increment!(:CommentCounter)
  end

  private :update_the_comments_counter
end
