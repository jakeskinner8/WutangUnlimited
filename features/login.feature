Feature: Login to Teacher Quality Rating System

 As a Student
 So that I can login to the Teacher Quality Rating System
 I want to enter my vote for different voting categories for different Professors and Courses

 Background: database is seeded

 Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins | appearances  |
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 0    | 0            |

Given the following questions have been added have into the Teacher Quality Rating System:
| question                   | 
| 'What is your favorite place of study?'        | 


 Given the following users have registered into the Teacher Quality Rating System:
| email                       | password     |
| student1@uiowa.edu          | password     |
| student2@uiowa.edu          | password     |
| student3@uiowa.edu          | password     |
| student4@uiowa.edu          | password     |
| student5@uiowa.edu          | password     |

And I am on login page

Scenario: login registered users
 When I fill email with "student1@uiowa.edu" and password with "password"
 Then I should see "Signed in successfully."

Scenario: fail login of non-registered users
 When I fill email with "student1@uiowa.edu" and password with "password1"
 Then I should see "Invalid email or password."
