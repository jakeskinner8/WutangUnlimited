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
B.S., Electrical Engineering, Potchefstroom University, 1984", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Kruger-a.jpg?itok=xfkbi_r4"},

{:first_name => 'Jon', :last_name => "Kuhl", :email => "jon-kuhl@uiowa.edu
",:phone => "(319) 335-5958", :education=>"Ph.D., Computer Science, University of Iowa, 1980
M.S., Electrical Engineering, University of Iowa, 1977
B.S., Computer Science, University of Iowa, 1975", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/kuhl.jpg?itok=Baw3gcYs"},

{:first_name => 'Thomas', :last_name => "Casavant", :email => "tom-casavant@uiowa.edu",:phone => "(319) 335-5953", :education=>"Ph.D., Electrical Engineering, University of Iowa, 1986
M.S., Electrical Engineering, University of Iowa, 1983
B.S., C.S., University of Iowa, 1982 ", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/casavant-t.jpg?itok=TsJvwDoc"}


  	 ]

professors.each do |prof|
  Professor.create!(prof)
end


courses=[
{:course_name => 'CourseName1', :course_number => 'CourseNumber1'},
{:course_name => 'CourseName2', :course_number => 'CourseNumber2'},
{:course_name => 'CourseName3', :course_number => 'CourseNumber3'},
{:course_name => 'CourseName4', :course_number => 'CourseNumber4'},
{:course_name => 'CourseName5', :course_number => 'CourseNumber5'},
{:course_name => 'CourseName6', :course_number => 'CourseNumber6'},
{:course_name => 'CourseName7', :course_number => 'CourseNumber7'},
{:course_name => 'CourseName8', :course_number => 'CourseNumber8'},
{:course_name => 'CourseName9', :course_number => 'CourseNumber9'},
{:course_name => 'CourseName10', :course_number => 'CourseNumber10'}
]

courses.each do |c|
  Course.create!(c)
end


categories=[
{:category_id => 1, :category_type => 'Discussion'},
{:category_id => 2, :category_type => 'Explaining'}
]

categories.each do |ct|
  Categorie.create!(ct)
end
