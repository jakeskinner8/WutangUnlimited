Given(/^I am on login page$/) do
  visit "/users/sign_in"
end

Given(/^I am on home page$/) do
  visit "/"
end
Given(/^I am on the Invite page$/) do
  visit "/invite"
end

Given(/^the following questions have been added have into the Teacher Quality Rating System:$/) do |table|
    table.hashes.each do |ques|
    Question.create!(ques)
  end
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

Then(/^I could visit voting page$/) do
  visit '/votes'
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


Given(/^the following professors have been enterened into the Teacher Quality Rating System:$/) do |table|
  table.hashes.each do |prof|
    Professor.create!(prof)
  end
end

Given(/^I am on the teachers bio page$/) do
   visit "/professors"
end

Then(/^I should see all of the professors$/) do
   rows = page.all('table#table tr').count  #counts the tables headers as a row so subtract 1
 
   assert rows.should == Professor.all.size
end

When(/^I click on professor "(.*?)"$/) do |arg1|
  click_link "#{arg1}"
end

When(/^I click on Voting link$/) do
  visit 'vote-classes'
end

Given(/^the following courses have been enterened into the Teacher Quality Rating System:$/) do |table|
  table.hashes.each do |course|
    Course.create!(course)
  end
end


Given(/^I am on the teacher voting page$/) do
  visit "/vote-teachers"
end

Given(/^I am on the class voting page$/) do
  visit "/vote-classes"
end

Then(/^I should be able to choose from two images$/) do
 	assert find('img.image1') && find('img.image2')
end

Then(/^I should be able to choose from two classes$/) do
 	assert page.has_content?("SELT") && page.has_content?("CIE")
end

When(/^I click an image$/) do
  Professor.all.each do |y|
	temp |= page.all("img[@alt='#{y.id}']")
	if(temp)
		visit "votes/#{y.id}?loser=#{y.id}"
	end
  end
end

When(/^I click class SELT$/) do
  click_link "SELT"
end

When(/^I click button "(.*?)"$/) do |button|
  click_button button
end

When(/^I fill in "(.*?)" into the email$/) do |arg1|
  fill_in 'Emails', :with => arg1
  click_button 'Send Invite(s)'
end

