Feature: Manage Posts
	In order to write a post 
	As a user 
	I want to create a post

Scenario:Create valid posts
	Given I am an authenticated user
	Given I create a "New Post" 
	And I fill in "Post" with "hgkum bkmnbkhb kjbkmjk"
	And I fill in "Summary" with "terwreaCsZDc"
	And I press "Create Post"
	Then I should see "Post was successfully created"
	And I should see "Post: hgkum bkmnbkhb kjbkmjk"
	And I should see "User: 1"
	And I should see "Summary: hgkum bkmn"

Scenario:Create invalid posts
	Given I am an authenticated user
	Given I create a "New Post" 
	And I fill in "Post" with "hgkum"
	And I fill in "Summary" with "terwre"
	And I press "Create Post"
	Then I should see "1 error prohibited this post from being saved"
	
	
Scenario:Edit a valid post
	Given I am an authenticated user
	Given I have created a post 
	Given I create a "Edit"
	And I fill in "Post" with "hgkum bkmnbkhb kjbkmjk"
	And I fill in "Summary" with "terwreaCsZDc"
	And I press "Update Post"
	Then I should see "Post was successfully updated"
	
Scenario:Edit a valid post with invalid details
	Given I am an authenticated user
	Given I have created a post 
	Given I create a "Edit"
	And I fill in "Post" with "hgkum"
	And I fill in "Summary" with "terwreaCsZDc"
	And I press "Update Post"
	Then I should see "1 error prohibited this post from being saved"
