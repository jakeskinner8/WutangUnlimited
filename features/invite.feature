Feature: Invite Friends to Teacher Quality Rating System

	As a student
	So that my friends can use the site too
	I want to be ale to invite my friends to use the website.

Background: user has registered into Teacher Quality Rating System
 Given the following users have registered into the Teacher Quality Rating System:
| email                       | password     |
| student1@uiowa.edu          | password     |
| student2@uiowa.edu          | password     |
| student3@uiowa.edu          | password     |
| student4@uiowa.edu          | password     |
| student5@uiowa.edu          | password     |

Scenario: user is not logged in
Given the user is not logged in
Then I should see "You must be logged in to view this page."

Scenario: user is logged in
Given the user is on the Invite page
And I fill in "student6@uiowa.edu" into the email
Then I should see "Invite(s) Sent!"
