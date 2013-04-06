# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first
professors = [
{:first_name => 'Anton', :last_name => "Kruger", :email => "anton-kruger@uiowa.edu",:phone => "(319) 335-6287", :education=>"Ph.D., Electrical and Computer Engineering, University of Iowa, 1992
M.S., Electrical Engineering, Potchefstroom University, 1986
B.S., Electrical Engineering, Potchefstroom University, 1984", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Kruger-a.jpg?itok=xfkbi_r4"}


  	 ]

professors.each do |prof|
  Professor.create!(prof)
end
