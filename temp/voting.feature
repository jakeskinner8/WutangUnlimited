Feature: Voting

As a registered user
So that I could voice my opinion
I want to be able to vote

Background: I was logged in succesfully

Given the following User has been registered:
|first_name	|last_name	|user_name	|password	|
|Duy		|Nguyen		|duynguyen	|pass1		|
|Brian		|Chau		|brianchau	|pass2		|

Given the following Course list has been added:
|course_name	|course_number	|
|Linear	System	|101		|
|Senior Design	|201		|
|Calculus I	|111		|
|Thermodynamic	|131		|

Given the following Category list for the Professor tab has been added:
|professor_category		|
|teaching			|
|communicating			|
|outside help			|
|lecture detail			|

Given the follwing Category list for the Course tab has been added:
|course_category	|
|easy homework		|
|easy to understand	|
|easy test		|
|little workload	|
|medium workload	|
|a lot workload		|

And I have succesfully logged in with username "name" and password "pass"
And I'm on the "voting" page

Scenario: I'm able to select Professor tab
When I click on "Teacher" tab 
Then I should be able to see all items belong to "course_name" and "profesor_category"

Scenario: Choosing question from Professor tab
When I click on item "Linear System" of "course_name" and item "teaching" of "professor_category"
Then I should be able to see "Who is better in teaching of Linear System?" question
And I should be able to see the name of two professors

Scenario: I'm able to select Course tab
When I click on "Course" tab
Then I should be able to see all items belong to "course_category"

Scenario: Choosing question from Course tab
When I click on item "easy homework"
Then I should be able to see "Which has easy homework?" question
And I should be able to see the name of two courses 



