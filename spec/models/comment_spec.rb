require './spec/rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.create(PostId: 1, AuthorId: 2, Text: 'Hi Tom!') }

  before { subject.save }

  it 'should test for author_id' do
    expect(subject.AuthorId).to eql 2
  end

  it 'should test for post_id' do
    expect(subject.PostId).to eql 1
  end

  it 'should test for text' do
    expect(subject.Text).to eql 'Hi Tom!'
  end

  it 'Testing post LikeCounter number negative' do
    post = Post.create(AuthorId: 1, Title: 'John', Text: 'anything')
    post.LikeCounter = -10
    expect(post).to_not be_valid
  end
end
