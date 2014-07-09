require 'rails_helper'
require 'faker'

RSpec.describe Post, :type => :model do

	it "is invalid without post" do
		FactoryGirl.build(:post, post: nil).should_not be_valid
	end

	it "is invalid without user id" do
		FactoryGirl.build(:post, user_id: nil).should_not be_valid
	end

	it "is invalid without summary" do
		FactoryGirl.build(:post, summary: nil).should_not be_valid
	end
it "is invalid when the length of post is less than 10" do
		FactoryGirl.build(:post, post: Faker::Lorem.characters(9)).should_not be_valid
	end

end
