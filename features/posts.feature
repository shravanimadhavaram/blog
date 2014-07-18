Feature: Manage Posts
	In order to write a post 
	As a user 
	I want to create a post

Scenario:Create valid posts
	Given I am an authenticated user
	And I fill in "Post" with "hgkum bkmnbkhb kjbkmjk"
	And I fill in "Summary" with "terwreaCsZDc"
	And I press "Create"
	Then I should see "Blog was successfully created."
	And I should see "Post: hgkum bkmnbkhb kjbkmjk"
	And I should see "Summary: terwreaCsZDc"
	And I should have 1 blog

