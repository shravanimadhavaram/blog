# spec/factories/contacts.rb 

require 'faker'
FactoryGirl.define do
	factory :blog do |f| 
 		email Faker::Internet.email
 		password "secret"
	end 
end