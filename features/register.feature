Feature: Registration

As a Student
So that I get registered with the Teacher Quality Rating System
I want to save my store my credentials in the system so that I can login the future

Background: user has been added to database
 Given the following users have registered into the Teacher Quality Rating System:
| email                       | password     |
| student1@uiowa.edu          | password     |

Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins | appearances  |
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 0    | 0            |

Given the following questions have been added have into the Teacher Quality Rating System:
| question                   | 
| 'What is your favorite place of study?'        | 

And I am on registration page

Scenario: Registration Succesfully
 When I fill email with "student2@uiowa.edu", password with "password", and password confirmation with "password"
 Then I should see "Welcome! You have signed up successfully."

Scenario: Registration failed due to username already taken
 When I fill email with "student1@uiowa.edu", password with "password", and password confirmation with "password"
 Then I should see "Email has already been taken"

Scenario: Password confirmation does not match password
 When I fill email with "student3@uiowa.edu", password with "password", and password confirmation with "password2"
 Then I should see "Password doesn't match confirmation"
