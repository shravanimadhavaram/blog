# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :post do
    post "MyText"
    user_id 1
    summary "MyString"
  end
end
