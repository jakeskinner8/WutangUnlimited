Feature: Login to Teacher Quality Rating System

 As a Student
 So that I can login to the Teacher Quality Rating System
 I want to enter my vote for different voting categories for different Professors and Courses

 Background: users have registered into Teacher Quality Rating System

 Given the following users have registered into the Teacher Quality Rating System
| email                       | password     |
| student1@uiowa.edu          | password     |
| student2@uiowa.edu          | password     |
| student3@uiowa.edu          | password     |
| student4@uiowa.edu          | password     |
| student5@uiowa.edu          | password     |

And I am on login page
Scenario: login registered users
 When I fill email with student1@uiowa.edu and password with password
 And I am on the home page
 Then I should see "Signed in successfully."

Scenario: fail login of non-registered users
 When I have fill email with student1@uiowa.edu and password with password1
 Then I should see "Invalid email or password.i"
