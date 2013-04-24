Feature: Teacher of the Month

Background: database seeded
 Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins | appearances  |winpercentage|
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 9    | 10           |90.00	|
| twof     	| twol   	|twof-twol@uiowa.edu	|path2		| 2    | 8            |25.00	|
| threef     	| threel   	|threef-threel@uiowa.edu|path3		| 3    | 6            |50.00	|

Given the following questions have been added have into the Teacher Quality Rating System:
| question                   | 
| 'What is your favorite place of study?'        | 

 Given the following courses have been enterened into the Teacher Quality Rating System:
| course_name	| 
| SELT     	| 
| CIE     	| 
| PIE     	| 
| Embedded     	| 


Scenario: teacher of the month

Given I am on home page
Then I should see "Teacher of The Month"
Then when I click "View Teacher's Bio"
Then I should see "Email: onef-onel@uiowa.edu"

