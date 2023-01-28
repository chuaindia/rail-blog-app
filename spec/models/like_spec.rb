require './spec/rails_helper'

RSpec.describe Like, type: :model do
  subject { Like.create(AuthorId: 1, PostId: 2) }

  before { subject.save }

  it 'should test for author_id' do
    expect(subject.AuthorId).to eql 1
  end

  it 'should test for post_id' do
    expect(subject.PostId).to eql 2
  end
end