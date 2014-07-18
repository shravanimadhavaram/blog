Given(/^I am an authenticated user$/) do
	post = 'hgkum bkmnbkhb kjbkmjk'
	summary = 'terwreaCsZDc '
  visit '/posts/new'
  fill_in "Post", :with => 'hgkum bkmnbkhb kjbkmjk'
  fill_in "Summary", :with => 'terwreaCsZDc '
  click_button "Create Post"
end