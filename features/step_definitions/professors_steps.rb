 Given /^The following users have registered into the Teacher Quality Rating System$/ do |users_table|
  users_table.hashes.each do |user|
    # Each returned movie will be a hash representing one row of the movies_table
    # The keys will be the table headers and the values will be the row contents.
    # You should arrange to add that movie to the database here.
    # You can add the entries directly to the databasse with ActiveRecord methodsQ
    User.create!(user)
  end
 end


When /^I fill email with "(.*?)" and password with "(.*?)"$/ do |email, password|
  visit new_user_session_path
  fill_in 'email', :with => email
  fill_in 'password', :with => password
  click_button 'Sign in'
end

And /^I am on the home page$/
  visit root_path
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end
