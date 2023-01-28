require './spec/rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(Name: 'Tom', Image: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Mexico.', PostCounter: 0) }

  before { subject.save }

  it 'should test for presence of name' do
    subject.Name = nil
    expect(subject).to_not be_valid
  end

  it 'should test for empty name' do
    subject.Name = ''
    expect(subject).to_not be_valid
  end

  it 'should test for integer' do
    subject.PostCounter = 'a'
    expect(subject).to_not be_valid
  end

  it 'should test for integers lesser than 0' do
    subject.PostCounter = -1
    expect(subject).to_not be_valid
  end

  it 'should test for integers greater than 0' do
    subject.PostCounter = 11
    expect(subject).to be_valid
  end

  it 'should respond to recent_three_posts method' do
    expect(subject).to respond_to(:latest_posts)
  end
end
