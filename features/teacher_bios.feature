Feature: Viewing Teacher bio’s

As a student
So that I can learn more about certain teachers
I want to be able to view teachers biography’s to see there background, what classes they teach, etc.

Background: professors already exist
 Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|
| onef     	| onel   	|onef-onel@uiowa.edu	|
| twof     	| twol   	|twof-twol@uiowa.edu	|
| threef     	| threel   	|threef-threel@uiowa.edu|
| fourf     	| fourl   	|fourf-fourl@uiowa.edu	|

 And I am on the teachers bio page

Scenario: See List of all Professors
Then I should see all of the professors

Scenario: View Details of Professors
When I click on professor "onef onel"
Then I should see "Email: onef-onel@uiowa.edu"
