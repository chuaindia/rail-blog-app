require './spec/rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.create(AuthorId: 1, Title: 'Hello', Text: 'This is my first post') }

  before { subject.save }

  it 'should test for author_id' do
    expect(subject.AuthorId).to eql 1
  end

  it 'should test for title' do
    expect(subject.Title).to eql 'Hello'
  end

  it 'should test for text' do
    expect(subject.Text).to eql 'This is my first post'
  end

  it 'should test for integers lesser than 0' do
    subject.LikeCounter = -2
    expect(subject).to_not be_valid
  end

  it 'should test for integers greater than 0' do
    subject.CommentCounter = 11
    expect(subject.comments_counter).to eql 11
  end

  it 'should respond to recent_five_comments method' do
    expect(subject).to respond_to(:latest_comments)
  end
end
