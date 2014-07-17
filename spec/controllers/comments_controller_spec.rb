require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!
require "spec_helper"

RSpec.describe CommentsController, :type => :controller do
render_views
include Devise::TestHelpers


def login_user(user)
    sign_in user
end
 

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Comment" do
        login_user(FactoryGirl.create(:user))
        
        @comment = FactoryGirl.create(:comment)
        
        expect {
        		post :create, {:id => @comment.id, comment: @comment.attributes}
        }.to change(Comment, :count).by(1)
      end

      it "assigns a newly created comment as @comment" do
        login_user
        @comment = FactoryGirl.create(:comment)
        post :create, {comment: @comment.attributes}
        expect(@comment).to be_a(Comment)
        expect(@comment).to be_persisted
      end

      it "redirects to the created comment" do
        login_user
        @comment = FactoryGirl.create(:comment)
        request.env["HTTP_REFERER"] = '/comments/' + @comment.id.to_s
        post :create, {comment: @comment.attributes}
        # post :create, {:comment => valid_attributes}, valid_session
        expect(response).to redirect_to('/comments/' + @comment.id.to_s) #Comment.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved comment as @comment" do
        login_user
        @comment = FactoryGirl.create(:comment)
        @comment.content = nil
        post :create, {comment: @comment.attributes}
        expect(@comment).to be_a(Comment)
      end

      # it "re-renders the 'new' template" do
      #   login_user
      #   @comment = FactoryGirl.create(:comment)
      #   # @comment.content = nil
      #   post :create, {comment: @comment.attributes}
      #   expect(response).to render_template("/comments/new")
      # end
     end
   end

end
