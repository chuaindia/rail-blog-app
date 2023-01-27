require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { User.new(Name: 'Tom', Image: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Mexico.') }

  before { subject.save }

  before(:each) do
    @post = Post.create(AuthorId: subject.id, Title: 'check post',
                        Text: 'Unit test for the method of most_recent_posts')
  end

  it 'Title is check post' do
    title = @post.Title

    expect(title).to eq('check post')
  end

  it 'Title must be there' do
    @post.Title

    expect(@post).to be_valid
  end

  it 'CommentCounter is equal to zero' do
    value = @post.CommentCounter

    expect(value).to eq 0
  end

  it 'Valid CommentCounter must be there' do
    @post.CommentCounter

    expect(@post).to be_valid
  end

  it 'LikeCounter is equal to zero' do
    value = @post.LikeCounter

    expect(value).to eq 0
  end

  it 'Valid LikeCounter must be there' do
    @post.LikeCounter

    expect(@post).to be_valid
  end

  it 'most_recent_comments should return zero' do
    comments = @post.most_recent_comments

    expect(comments).to eq []
  end

  it 'most_recent_comments should give 3 of the most recent post' do
    comment = Comment.create(AuthorId: subject.id, PostId: @post.id,
                             Text: 'Unit test for the method of most_recent_comments')

    recent = @post.most_recent_comments

    expect(recent).to eq [comment]
  end
end