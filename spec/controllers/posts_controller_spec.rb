require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!
require "spec_helper"



RSpec.describe PostsController, :type => :controller do
 render_views
include Devise::TestHelpers

 let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PostsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  # login_user

def login_user(user)
    sign_in user
end

  # user = FactoryGirl.create(:user)
  # login_as(user, :scope => :user)

 it "should have a current_user" do
    login_user(FactoryGirl.create(:user))
    subject.current_user.should_not be_nil
    # Warden.test_reset!
  end
  # logout(:user)

  describe "GET index" do
    it "has a 200 status code" do
      login_user(FactoryGirl.create(:user))
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET new" do
    it "has a 200 status code" do
      login_user(FactoryGirl.create(:user))
      get :new
      expect(response.status).to eq(200)
    end
  end

   describe "GET show" do
    it "assigns the requested post as @post" do
      login_user(FactoryGirl.create(:user))
      post = FactoryGirl.create(:post)
      get :show, {:id => post.to_param}, valid_session
      expect(assigns(:post)).to eq(post)
    end
  end


  # login_as(user, :scope => :user)
  describe "POST create" do
    it "has a 200 status code" do
      login_user(FactoryGirl.create(:user))
      post :create, :post => {:post => 'hiscwxwaububuhn' , :summary=> 'swxwc' , :user_id => '3'}
      expect(response.status).to eq(302)
        # Warden.test_reset!
    end
    it "redirects to root_path if blogs params are not validated" do
      login_user(FactoryGirl.create(:user))
      post :create, :post => {:post => 'hisc' , :summary=> 'swxwc' , :user_id => '3'}
      #get :show, id: b.id
     expect(subject).to render_template("new")
   end

  end

 describe "PUT update" do
    describe "with valid params" do

      it "updates the requested post" do
        login_user(FactoryGirl.create(:user))
        @post= FactoryGirl.create(:post)
        put :update, {:id => @post.id, post: @post.attributes}
        @post.reload
      end

      it "assigns the requested post as @post" do
        login_user(FactoryGirl.create(:user))
         @post= FactoryGirl.create(:post)
        put :update, {:id => @post.id, post: @post.attributes}
        expect(assigns(:post)).to eq(@post)
      end

      it "redirects to the post" do
        login_user(FactoryGirl.create(:user))
         @post= FactoryGirl.create(:post)
        put :update, {:id => @post.id, post: @post.attributes}
        expect(response).to redirect_to(Post.last)
      end
    end

    describe "with invalid params" do
      it "assigns the post as @post" do
        login_user(FactoryGirl.create(:user))
         @post= FactoryGirl.create(:post)
        put :update, {:id => @post.id, post: @post.attributes}
        expect(assigns(:post)).to eq(@post)
      end
    
    it "re-renders the 'edit' template" do
        login_user(FactoryGirl.create(:user))
       @post= FactoryGirl.create(:post)
        @post.post = nil
        put :update, {:id => @post.id, post: @post.attributes}
        expect(response).to render_template("posts/edit")
      end
      
    end
  end

   describe "DELETE destroy" do
    it "has a 200 status code" do
      login_user(FactoryGirl.create(:user))
      post = FactoryGirl.create(:post)
      delete :destroy,{:id => post.to_param}, valid_session
      expect(response.status).to eq(302)
        # Warden.test_reset!
    end
  end


 

  
end