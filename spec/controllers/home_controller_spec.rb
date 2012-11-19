require 'spec_helper'

describe HomeController do
  render_views

  describe :index do
    it 'renders landing page if user has not signed in' do
      get :index
      response.should be_success
      response.body.should =~ /Get to Know Your Colleagues./
    end

    it 'includes a button to sign in with Mozilla Persona' do
      get :index
      response.should be_success
      assert_select '#authenticate','Mozilla Persona'
    end
  end
end