require 'rails_helper'

include Warden::Test::Helpers
Warden.test_mode!


RSpec.describe "Login" do
  it "creates a new user" do
  	user = FactoryGirl.create(:user)
  	visit  new_user_registration_path 
  	fill_in "Email" , with: user.email
  	fill_in "Password", with: user.password
  	fill_in "confirm", with: user.password
  	click_button 'Sign up'
  end

  it "login for already existing user" do
      user = FactoryGirl.create(:user)
      visit new_user_session_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign in'
    end

  it "creating a post" do
  	user = FactoryGirl.create(:user)
  	login_as(user, :scope=> :user)
  	post = FactoryGirl.create(:post)
  	visit new_post_path
	fill_in "Post", with: 'cscasdcesdc'
  	fill_in "Summary", with: 'erfdca'
  	click_button 'Create Post'
  end

  it "edits a post" do
  	user = FactoryGirl.create(:user)
  	login_as(user, :scope=> :user)
  	post = FactoryGirl.create(:post)
  	visit new_post_path
	fill_in "Post", with: 'cscasdcesdc'
  	fill_in "Summary", with: 'erfdca'
  	click_button 'Create Post'
  	click_link 'Edit'
  	fill_in "Post", with: 'cscasdcesdc'
  	fill_in "Summary", with: 'erfdca'
  	click_button 'Update Post'
  end

 


end
