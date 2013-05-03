Feature: Reset password

Background: user has registered into Teacher Quality Rating System
 Given the following users have registered into the Teacher Quality Rating System:
| email                       | password     |
| student1@uiowa.edu          | password     |

Given I am on login page
When I click "Forgot your password?"
And I fill in "student1@uiowa.edu" into the email field
Then I click button "Send me reset password instructions"
Then I should see "You will receive an email with instructions"
