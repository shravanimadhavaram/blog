require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!
require "spec_helper"

RSpec.describe CommentsController, :type => :controller do
render_views
include Devise::TestHelpers

before(:each) do

 

DatabaseCleaner.clean
@user=FactoryGirl.create(:user)
@user.save!
sign_in(@user)
end

it "redirects to blog_path after creating comment" do
	b=FactoryGirl.create(:post)
	post :create, post_id: b.id, comment:{body: "jhsbdhjsvs"}
	#puts Comment.last.body
	expect(subject).to redirect_to b
end






end
