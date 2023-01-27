require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(Name: 'Tom', Image: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Mexico.') }

  before { subject.save }

  it 'Tom is the required name' do
    name = subject.Name

    expect(name).to eq('Tom')
  end

  it 'Name must be given' do
    subject.Name

    expect(subject).to be_valid
  end

  it 'PostCounter is zero' do
    value = subject.PostCounter

    expect(value).to eq 0
  end

  it 'Valid PostCounter' do
    subject.PostCounter

    expect(subject).to be_valid
  end

  it 'recent_posts should return zero' do
    posts = subject.latest_posts

    expect(posts).to eq []
  end

  it 'recent_posts should return 3 of the most recent post' do
    post = Post.create(AuthorId: subject.id, Title: 'check post', Text: 'Unit test for the method of most_recent_posts')

    recent = subject.latest_posts

    expect(recent).to eq [post]
  end
end