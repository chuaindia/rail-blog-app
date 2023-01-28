class Post < ApplicationRecord
  after_save :update_post_counter

  belongs_to :user, class_name: 'User', foreign_key: 'AuthorId'
  has_many :likes
  has_many :comments

  def most_recent_comments
    Comment.where(PostId: id).last(5)
  end

  def updates_the_posts_counter
    user.increment!(:PostCounter)
  end

  private :updates_the_posts_counter
end
