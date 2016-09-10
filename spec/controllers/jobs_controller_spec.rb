require 'rails_helper'

RSpec.describe JobsController do
  describe 'the index page' do
    it 'renders the index page' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'the new jobs page' do
    it 'renders the new job form' do
      get :new
      expect(response).to render_template('new')
    end

    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(:success)
    end

    it 'assigns @job' do
      get :new
      expect(assigns(:job)).to be
    end
  end
end