require 'rails_helper'

RSpec.describe Post, :type => :model do

	it "is invalid without email" do
		FactoryGirl.build(:post, post: nil).should_not be_valid
	end

	it "is invalid without user id" do
		FactoryGirl.build(:post, user_id: nil).should_not be_valid
	end

	it "is invalid without summary" do
		FactoryGirl.build(:post, summary: nil).should_not be_valid
	end


end
