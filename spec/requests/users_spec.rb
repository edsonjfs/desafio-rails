require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      user = User.create!(name: 'User')
      get users_path
      expect(response).to have_http_status(200)
      expect(assigns(:users)).to eq([user])
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      user = User.create!(name: 'User')
      get user_path(user.id)
      expect(response).to have_http_status(200)
      expect(assigns(:user)).to eq(user)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/users#new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/users#create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/users#edit'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /update' do
    it 'returns http success' do
      get '/users#update'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/users#destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
