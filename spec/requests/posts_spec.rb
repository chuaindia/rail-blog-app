require './spec/rails_helper'

describe PostsController, type: :request do
  describe 'test for index method' do
    before(:each) do
      get '/users/:id/posts'
    end

    it 'should test for request status index method' do
      expect(response).to have_http_status(:ok)
    end

    it "should render 'index' template" do
      expect(response).to render_template(:index)
    end

    it 'should test for response body' do
      expect(response.body).to include('view all the posts of a fixed user')
    end
  end

  describe 'test for show method' do
    before(:each) do
      get '/users/1/posts/2'
    end
    it 'should test for request status of show method' do
      expect(response).to have_http_status(:ok)
    end

    it "should render 'show' template" do
      expect(response).to render_template(:show)
    end

    it 'should test for response body' do
      expect(response.body).to include('view single post of a fixed user')
    end
  end
end
