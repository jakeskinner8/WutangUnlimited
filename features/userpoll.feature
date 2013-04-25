Feature: UserPoll

As a visitor
So that I can answer basic questions
I want to be able to answer general questions

Background: I am on home page

Given the following questions have been added have into the Teacher Quality Rating System:
| question                                       |       total       |
| 'What is your favorite place of study?'        |         0         |

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


And I am on home page

Scenario: I can vote for any question present on the home page
When I click on Home link
Then I should see "Your answer was submitted. View the results page to see how other people answered the question."

Scenario: I can view all the results
When I view question results
Then I should see "What is your favorite place of study?"











