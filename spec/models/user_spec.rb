require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Kareem', posts_counter: 10) }

  before { subject.save }

  it 'Name of user must not be blank.' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'Name of user must not be blank.' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end
end


# def last_3_posts
#   posts.order(created_at: :DESC).limit(3)
# end

# it 'Has a most_recent_5_comments method' do
#   expect(subject).to respond_to(:most_recent_5_comments)
# end

# it 'Has a last_3_posts method' do
#   expect(subject).to respond_to(:last_3_posts)
# end