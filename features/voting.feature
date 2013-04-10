Feature: Voting

As a registered user
So that I could voice my opinion
I want to be able to vote

Background: I'm logged then I'm able see voting page

Given the following users have registered into the Teacher Quality Rating System:
| email                       | password     |
| student1@uiowa.edu          | password     |

And I am on login page

Scenario: I'm able to view the voting page
When I fill email with "student1@uiowa.edu" and password with "password" 
Then I should see "Voting"

Given the following courses have been enterened into the Teacher Quality Rating System:
|course_name	|course_number	|
|Linear	System	|101		|
|Senior Design	|201		|
|Calculus I	|111		|
|Thermodynamic	|131		|

And I am on voting page

Scenario:I'm able to vote
When
Then





