Given(/^I am on login page$/) do
  visit "/users/sign_in"
end


Given(/^the following users have registered into the Teacher Quality Rating System:$/) do |table|
   table.hashes.each do |user|
    User.create!(user)
  end
end

When(/^I fill email with "(.*?)" and password with "(.*?)"$/) do |email, password|
  fill_in 'Email', :with => email
  fill_in 'Password', :with => password
  click_button 'Sign in'
end

Then(/^I should see "(.*?)"$/) do |arg1|
  assert page.has_content?("#{arg1}")
end

Given(/^I am on registration page$/) do
  visit "/users/sign_up"
end

When(/^I fill email with "(.*?)", password with "(.*?)", and password confirmation with "(.*?)"$/) do |e,p1, p2|
  fill_in 'Email', :with => e
  fill_in 'user_password', :with => p1
  fill_in 'user_password_confirmation', :with => p2
  click_button 'Sign up'
end



