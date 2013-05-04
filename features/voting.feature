Feature: Voting

As a registered user
So that I could voice my opinion
I want to be able to vote

Background: I'm logged then I'm able see voting page

Given the following questions have been added have into the Teacher Quality Rating System:
| question                                       | total                       |
| 'What is your favorite place of study?'        |   0                         |

Given the following answers have been added have into the Teacher Quality Rating System:
| Question_id           |       answers     |
|        1              |       Home        |

Given the following userpollresults have been added have into the Teacher Quality Rating System:
| Question_id                   |        Answer_id           |            totalpoll   |
| 1                             |         1                  |                 0      |  

Given the following users have registered into the Teacher Quality Rating System:
| email                       | password     |
| student1@uiowa.edu          | password     |

Given the following professors have been enterened into the Teacher Quality Rating System:
| first_name	| last_name	|email          	|image_path	| wins	| appearances|winpercentage |
| onef     	| onel   	|onef-onel@uiowa.edu	|path1		| 0	| 0	     |0.0	    |
| twof     	| twol   	|twof-twol@uiowa.edu	|path2		| 0     | 0          |0.0	    |

Given the following courses have been enterened into the Teacher Quality Rating System:
| course_name	| wins	| appearances|winpercentage |
| SELT     	| 0	| 0	     |0.0	    | 
| CIE     	| 0	| 0	     |0.0 	    | 

Given the following pquestions have been added have into the Teacher Quality Rating System:
| question                   |       
| Who is better at communication?|  

Given the following cquestions have been added have into the Teacher Quality Rating System:
| question                   |       
| Which course has more homework?|         

Given the following userpollresults have been added have into the Teacher Quality Rating System:
| Question_id                   |        Answer_id           |            totalpoll   |
| 1                             |         1                  |                 0      |  


And I am on home page

Scenario: I can't visit voting page if I'm not logged in
	When I click on Voting link
	Then I should see "You must be logged in to view this page."

Scenario: Class voting
	When I am on login page
	And I fill email with "student1@uiowa.edu" and password with "password"
	And I am on the class voting page
	Then I should be able to choose from two classes
	When I click class SELT
	Then I should see "You voted for SELT"

Scenario: Skip a vote from class voting page
	When I am on login page
	And I fill email with "student1@uiowa.edu" and password with "password"
	And I am on the class voting page
	When I click button "Skip"
	Then I should see "You skipped the previous question."

Scenario: Skip a vote from teacher voting page
	When I am on login page
	And I fill email with "student1@uiowa.edu" and password with "password"
	And I am on the teacher voting page
	When I click button "Skip"
	Then I should see "You skipped the previous question."


Scenario: Class voting (voting for some choice twice)
	When I am on login page
	And I fill email with "student1@uiowa.edu" and password with "password"
	And I am on the class voting page
	Then I should be able to choose from two classes
	When I click class SELT
	Then I should see "You voted for SELT"
	When I click class SELT
	Then I should see "You voted for SELT"

