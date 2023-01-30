require './spec/rails_helper'

RSpec.describe User, type: :model do
  subject { User.create(Name: '', Image: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Mexico.', PostCounter: 11) }

  before { subject.save }

  it 'should test for empty name' do
    subject.Name = ''
    expect(subject).respond_to?(:Name)
  end

  it 'should test for other than integer' do
    subject.PostCounter = 'a'
    expect(subject).respond_to?(:PostCounter)
  end

  it 'should test for integers lesser than 0' do
    subject.PostCounter = -1
    expect(subject).respond_to?(:PostCounter)
  end

  it 'should test for integers greater than 0' do
    subject.PostCounter = 11
    expect(subject).respond_to?(:PostCounter)
  end

  it 'should respond to recent_three_posts method' do
    expect(subject).to respond_to(:most_recent_posts)
  end
end
