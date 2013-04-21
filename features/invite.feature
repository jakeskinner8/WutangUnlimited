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

 Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins | appearances  |
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 0    | 0            |

Given the following questions have been added have into the Teacher Quality Rating System:
| question                   | 
| 'What is your favorite place of study?'        | 



Scenario: user is not logged in
Given I am on the Invite page
Then I should see "You must be logged in to view this page."

Scenario: user is logged in
Given I am on login page
When I fill email with "student1@uiowa.edu" and password with "password"
Given I am on the Invite page
And I fill in "student6@uiowa.edu" into the email
Then I should see "Invite(s) Sent!"
