Given(/^I am an authenticated user$/) do
	user = FactoryGirl.create(:user)
  visit new_user_session_path
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Sign in'
end

Given(/^I create a "(.*?)"$/) do |arg1|
  click_link(arg1)
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Given(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
 expect(page).to have_text(arg1)
end

Then(/^I should have (\d+) blog$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end


Given(/^I have created a post$/) do
  step %Q{I create a "New Post"}
	step %Q{I fill in "Post" with "Illo qui voluptas. Id sit quaerat enim aut cupiditate voluptates dolorum."}
	step %Q{I fill in "Summary" with "terwreaCsZDc"}
	step %Q{I press "Create Post"}
	step %Q{I should see "Post was successfully created."}
end