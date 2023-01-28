require 'rails_helper'
RSpec.describe User, type: :model do
  it 'Testing user without name' do
    user = User.create
    expect(user).to_not be_valid
  end

  it 'Testing user PostCounter number negative' do
    user = User.create(Name: 'Tanusri', Image: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Microverse')
    user.PostCounter = -10
    expect(user).to_not be_valid
  end

  it 'Name should be present' do
    user = User.create(Name: 'Tanusri', Image: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Microverse')
    user.Name = nil
    expect(user).to_not be_valid
  end

  it 'Has a latest_posts method' do
    user = User.new(Name: 'Tanusri', PostCounter: 9)
    expect(user).to respond_to(:latest_posts)
  end
end
