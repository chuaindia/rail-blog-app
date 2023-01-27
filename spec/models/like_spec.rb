require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'Update like counter for post' do
    user = User.create(Name: 'John', Image: 'www.google.com', Bio: 'Male')
    post = Post.create(user_id: user.id, Title: 'Hello', Text: 'Hello1')
    Like.create(user_id: user.id, post_id: post.id)
    postfirst = Post.first
    expect(postfirst.LikeCounter).to eq(1)
  end
end
