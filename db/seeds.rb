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
B.S., C.S., University of Iowa, 1982 ", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/casavant-t.jpg?itok=TsJvwDoc"},

{:first_name => 'Raghuraman', :last_name => "Mudumbai", :email => "rmudumbai@engineering.uiowa.edu",:phone => "(319) 335-6333", :education=>"Ph.D., Electrical and Computer Engineering, University of California, Santa Barbara, 2007.
M.S., Electrical Engineering, Brooklyn Polytechnic University, 2000.
B. Tech., Electrical Engineering, Indian Institute of Technology, Madras, 1998.", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Mudumbai-r.jpg?itok=N-FRVMBz"}, 

{:first_name => 'Mona', :last_name => "Garvin", :email => "mona-garvin@uiowa.edu",:phone => "(319) 335-5950", :education=>"Ph.D., Biomedical Engineering, The University of Iowa, 2008
M.S., Biomedical Engineering, The University of Iowa, 2004
B.S.E., Biomedical Engineering, The University of Iowa, 2003
B.S., Computer Science, The University of Iowa, 2003", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/garvin-m.jpg?itok=_CEshS6U"},
 
{:first_name => 'Mark', :last_name => "Andersland", :email => "mark-andersland@uiowa.edu",
:phone => "(319) 335-6167", :education=>"Ph.D., Electrical Engineering, University of Michigan, 1989
M.S.E., Electrical Engineering, University of Michigan, 1984
B.S.E., Electrical Engineering, University of Michigan, 1983", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Andersland%20Mark.jpg?itok=AoWaliCR"}, 

{:first_name => 'Reinhard', :last_name => "Beichel", :email => "reinhard-beichel@uiowa.edu",
:phone => "(319) 335-4597", :education=>"Ph.D., Telematics (Computer Science), Graz University of Technology, 2005
M.S., Telematics (Computer Science), Graz University of Technology, 1999", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Beichel%20Reinhard.jpg?itok=c4Pvcyr2"},

{:first_name => 'David', :last_name => "Anderson", :email => "kOrx@uiowa.edu",
:phone => "(319) 335-2529", :education=>"Ph.D., Electrical Engineering, Purdue University, 1986
M.S.E.E., Electrical Engineering, Purdue University, 1982
B.S.E.E., Electrical Engineering, Iowa State University, 1981", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/andersen_0.jpg?itok=5WaJ5qhX"}, 

{:first_name => 'Sudhakar', :last_name => "Reddy", :email => "sudhakar-reddy@uiowa.edu",
:phone => "(319) 335-5196", :education=>"Ph.D., Electrical Engineering, University of Iowa, 1968
M.E., Electrical Engineering, Indian Institute of Science, 1963
B.E., Electrical Engineering, Osmania University, 1962
B.Sc., Physics, Osmania University, 1958", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Reddy%2C%20Sudhakar.jpg?itok=1JhwZDEJ"}



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
