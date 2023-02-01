require './spec/rails_helper'

describe PostsController, type: :request do
  describe 'test for index method' do
    before(:each) do
      get '/users/:id/posts'
    end

    it 'should test for request status index method' do
      expect(response).to have_http_status(:ok)
    end

    it 'should test for response body' do
      expect(response.body).to include('All Post here')
    end
  end

  describe 'test for show method' do
    before(:each) do
      get '/users/1/posts/2'
    end
    it 'should test for request status of show method' do
      expect(response).to have_http_status(:ok)
    end

    it 'should test for response body' do
      expect(response.body).to include('Single Post here')
    end
  end
end
