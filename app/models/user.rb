class User < ApplicationRecord
  has_many :posts, foreign_key: 'AuthorId'
  has_many :comments, foreign_key: 'AuthorId'
  has_many :likes, foreign_key: 'AuthorId'

  def most_recent_posts
    Post.includes(AuthorId: id).last(3)
  end

  validates :Name, presence: true
  validates :PostCounter, numericality: { greater_than_or_equal_to: 0 }
end
