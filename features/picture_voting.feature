Feature: Picture Voting

As a student that doesn’t always remember a professor’s name, but can always remember a face.
So that I can put an image to each name.
I want to be able to able to see a picture of each professor, and click on them when answer questions.

Background: database seeded
 Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins | appearances  |
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 0    | 0            |
| twof     	| twol   	|twof-twol@uiowa.edu	|path2		| 0    | 0            |
| threef     	| threel   	|threef-threel@uiowa.edu|path3		| 0    | 0            |
| fourf     	| fourl   	|fourf-fourl@uiowa.edu	|path4		| 0    | 0            |

 Given the following courses have been enterened into the Teacher Quality Rating System:
| course_name	| 
| SELT     	| 
| CIE     	| 
| PIE     	| 
| Embedded     	| 
 Given the following users have registered into the Teacher Quality Rating System:
| email                       | password     |
| student1@uiowa.edu          | password     |

And I am on login page
When I fill email with "student1@uiowa.edu" and password with "password"

Scenario: picture voting
Given I am on the teacher voting page
Then I should be able to choose from two images
When I click an image
Then I should see "You voted for " 
