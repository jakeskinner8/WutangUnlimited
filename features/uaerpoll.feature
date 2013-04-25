Feature: UserPoll

As a visitor
So that I can answer basic questions
I want to be able to answer general questions

Background: I am on home page

Given the following questions have been added have into the Teacher Quality Rating System:
| question                   | 
| 'What is your favorite place of study?'        | 

Given the following users have registered into the Teacher Quality Rating System:
| email                       | password     |
| student1@uiowa.edu          | password     |

Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins	| appearances|winpercentage |
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 0	| 0	     |0.0	    |
| twof     	| twol   	|twof-twol@uiowa.edu	|path2		| 0     | 0          |0.0	    |

Given the following courses have been enterened into the Teacher Quality Rating System:
| course_name	| wins	| appearances|winpercentage |
| SELT     	| 0	| 0	     |0.0	    | 
| CIE     	| 0	| 0	     |0.0 	    | 


And I am on home page

Scenario: I can't visit voting page if I'm not logged in
When I click on Voting link
Then I should see "You must be logged in to view this page."

Scenario: Class voting
When I am on login page
And I fill email with "student1@uiowa.edu" and password with "password"
And I am on the class voting page
Then I should be able to choose from two classes
When I click class SELT
Then I should see "You voted for "

Scenario: Skip a vote from class voting page
When I am on login page
And I fill email with "student1@uiowa.edu" and password with "password"
And I am on the class voting page
When I click button "Skip"
Then I should see "You skipped the previous question."

Scenario: Skip a vote from teacher voting page
When I am on login page
And I fill email with "student1@uiowa.edu" and password with "password"
And I am on the teacher voting page
When I click button "Skip"
Then I should see "You skipped the previous question."















