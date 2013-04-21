Feature: Top 5 Teachers/Classes
	As a student
	So that I can quickly see the most popular teachers
	I want to see a list of the top voted teachers by all students

Background: database is seeded

Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins 	| appearances  	|winpercentage|	
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 100   | 100        	|100|
| twof     	| twol   	|twof-twol@uiowa.edu	|path2		| 50    | 100       	|50|

Given the following questions have been added have into the Teacher Quality Rating System:
| question                   			 | 
| 'What is your favorite place of study?'        | 

Given the following courses have been enterened into the Teacher Quality Rating System:
| course_name	| wins 	| appearances  	|winpercentage|	
| course1     	| 100   | 100           |100	|
| course2     	| 50   	| 100           |50	|


Scenario: top 5 teachers on home page
Given I am on home page
Then I should see "Here is the list of the top 5 teachers"
And I should see "onef" before "twof"


Scenario: top 5 teachers on results page
Given I am on home page
When I click link "generalhistoryprofessors"
Then I should see "onef" has win percentage of "100.00"


Scenario: top 5 courses on results page
Given I am on home page
Then I should see "Here is the list of the top 5 classes"
And I should see "course1" before "course2"
When I click link "generalhistoryclasses"
Then I should see "course1" has win percentage of "100.00"


