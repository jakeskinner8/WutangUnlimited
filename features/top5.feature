Feature: Top 5 Teachers/Classes
	As a student
	So that I can quickly see the most popular teachers
	I want to see a list of the top voted teachers by all students

Background: database is seeded

Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins 	| appearances  	|winpercentage|	
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 100   | 100        	|100|
| twof     	| twol   	|twof-twol@uiowa.edu	|path2		| 75    | 150       	|50|

Given the following questions have been added have into the Teacher Quality Rating System:
| question                   			 | 
| 'What is your favorite place of study?'        | 

Given the following courses have been enterened into the Teacher Quality Rating System:
| course_name	| wins 	| appearances  	|winpercentage|	
| course1     	| 100   | 100           |100	|
| course2     	| 75   	| 150           |50	|


Scenario: top 5 teachers on home page
Given I am on home page
Then I should see "Here is the list of the top 5 teachers"
And I should find that "onef" is before "twof"


Scenario: top 5 teachers on results page
Given I am on home page
When I click link "generalhistoryprofessors"
Then it should show "onef" has win percentage of "100.00"

Scenario: teachers can be sorted by name on results page
Given I am on the teachers results page
When I click link to sort professors by "name"
Then I should find that "onel" is before "twol"

Scenario: teachers can be sorted by win percentage on results page
Given I am on the teachers results page
When I click link to sort professors by "winpercentage"
Then I should find that "onel" is before "twol"

Scenario: teachers can be sorted by wins on results page
Given I am on the teachers results page
When I click link to sort professors by "wins"
Then I should find that "onel" is before "twol"

Scenario: teachers can be sorted by appearances on results page
Given I am on the teachers results page
When I click link to sort professors by "appearances"
Then I should find that "twol" is before "onel"

Scenario: top 5 courses on results page
Given I am on home page
Then I should see "Here is the list of the top 5 courses"
And I should find that "course1" is before "course2"
When I click link "generalhistoryclasses"
Then it should show "course1" has win percentage of "100.00"


Scenario: courses can be sorted by win percentage on results page
Given I am on the courses results page
When I click link to sort courses by "winpercentage"
Then I should find that "course1" is before "course2"

Scenario: courses can be sorted by wins on results page
Given I am on the courses results page
When I click link to sort courses by "wins"
Then I should find that "course1" is before "course2"

Scenario: courses can be sorted by appearances on results page
Given I am on the courses results page
When I click link to sort courses by "appearances"
Then I should find that "course2" is before "course1"

Scenario: courses can be sorted by name on results page
Given I am on the courses results page
When I click link to sort courses by "name"
Then I should find that "course1" is before "course2"



