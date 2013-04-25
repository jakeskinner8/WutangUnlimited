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
B.S., Electrical Engineering, Potchefstroom University, 1984", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Kruger-a.jpg?itok=xfkbi_r4",:wins=>0,:appearances=>0,:winpercentage=>0.0},

{:first_name => 'Jon', :last_name => "Kuhl", :email => "jon-kuhl@uiowa.edu
",:phone => "(319) 335-5958", :education=>"Ph.D., Computer Science, University of Iowa, 1980
M.S., Electrical Engineering, University of Iowa, 1977
B.S., Computer Science, University of Iowa, 1975", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/kuhl.jpg?itok=Baw3gcYs",:wins=>0,:appearances=>0,:winpercentage=>0.0},

{:first_name => 'Thomas', :last_name => "Casavant", :email => "tom-casavant@uiowa.edu",:phone => "(319) 335-5953", :education=>"Ph.D., Electrical Engineering, University of Iowa, 1986
M.S., Electrical Engineering, University of Iowa, 1983
B.S., C.S., University of Iowa, 1982 ", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/casavant-t.jpg?itok=TsJvwDoc",:wins=>0,:appearances=>0,:winpercentage=>0.0},

{:first_name => 'Raghuraman', :last_name => "Mudumbai", :email => "rmudumbai@engineering.uiowa.edu",:phone => "(319) 335-6333", :education=>"Ph.D., Electrical and Computer Engineering, University of California, Santa Barbara, 2007.
M.S., Electrical Engineering, Brooklyn Polytechnic University, 2000.
B. Tech., Electrical Engineering, Indian Institute of Technology, Madras, 1998.", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Mudumbai-r.jpg?itok=N-FRVMBz",:wins=>0,:appearances=>0,:winpercentage=>0.0}, 

{:first_name => 'Mona', :last_name => "Garvin", :email => "mona-garvin@uiowa.edu",:phone => "(319) 335-5950", :education=>"Ph.D., Biomedical Engineering, The University of Iowa, 2008
M.S., Biomedical Engineering, The University of Iowa, 2004
B.S.E., Biomedical Engineering, The University of Iowa, 2003
B.S., Computer Science, The University of Iowa, 2003", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/garvin-m.jpg?itok=_CEshS6U",:wins=>0,:appearances=>0,:winpercentage=>0.0},
 
{:first_name => 'Mark', :last_name => "Andersland", :email => "mark-andersland@uiowa.edu",
:phone => "(319) 335-6167", :education=>"Ph.D., Electrical Engineering, University of Michigan, 1989
M.S.E., Electrical Engineering, University of Michigan, 1984
B.S.E., Electrical Engineering, University of Michigan, 1983", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Andersland%20Mark.jpg?itok=AoWaliCR",:wins=>0,:appearances=>0,:winpercentage=>0.0}, 

{:first_name => 'Reinhard', :last_name => "Beichel", :email => "reinhard-beichel@uiowa.edu",
:phone => "(319) 335-4597", :education=>"Ph.D., Telematics (Computer Science), Graz University of Technology, 2005
M.S., Telematics (Computer Science), Graz University of Technology, 1999", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Beichel%20Reinhard.jpg?itok=c4Pvcyr2",:wins=>0,:appearances=>0,:winpercentage=>0.0},

{:first_name => 'David', :last_name => "Anderson", :email => "kOrx@uiowa.edu",
:phone => "(319) 335-2529", :education=>"Ph.D., Electrical Engineering, Purdue University, 1986
M.S.E.E., Electrical Engineering, Purdue University, 1982
B.S.E.E., Electrical Engineering, Iowa State University, 1981", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/andersen_0.jpg?itok=5WaJ5qhX",:wins=>0,:appearances=>0,:winpercentage=>0.0}, 

{:first_name => 'Sudhakar', :last_name => "Reddy", :email => "sudhakar-reddy@uiowa.edu",
:phone => "(319) 335-5196", :education=>"Ph.D., Electrical Engineering, University of Iowa, 1968
M.E., Electrical Engineering, Indian Institute of Science, 1963
B.E., Electrical Engineering, Osmania University, 1962
B.Sc., Physics, Osmania University, 1958", :image_path=>"http://www.engineering.uiowa.edu/sites/default/files/styles/profile_portrait/public/field/image/Reddy%2C%20Sudhakar.jpg?itok=1JhwZDEJ",:wins=>0,:appearances=>0,:winpercentage=>0.0}



 	 ]

professors.each do |prof|
  Professor.create!(prof)
end


courses=[
{:course_name => 'Embedded Systems', :course_number => 'CourseNumber1' ,:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'SELT', :course_number => 'CourseNumber2',:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'Electronic Circuits', :course_number => 'CourseNumber3',:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'Introduction to Software Design', :course_number => 'CourseNumber4',:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'Computers In Engineering', :course_number => 'CourseNumber5',:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'Testing Digital Logic Circuits', :course_number => 'CourseNumber6',:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'Computer Architecture', :course_number => 'CourseNumber7',:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'PEI', :course_number => 'CourseNumber8',:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'Senior Design', :course_number => 'CourseNumber9',:wins=>0,:appearances=>0,:winpercentage=>0.0},
{:course_name => 'Fundamentals of Software Engineering', :course_number => 'CourseNumber10',:wins=>0,:appearances=>0,:winpercentage=>0.0}
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



questions=[
{:question => 'What is your favorite place of study?', :total => 0},
{:question => 'Do you like this website?', :total => 0},
{:question => 'How many hours do you study daily?', :total => 0},
{:question => 'Which flower do you like the most?', :total => 0},
{:question => 'What is your major?', :total => 0},
{:question => 'Which sport do you like the most?', :total => 0},
{:question => 'How many hours do you spend time in the library per month?', :total => 0},
{:question => 'Do you like programming?', :total => 0}
]

questions.each do |q|
  Question.create!(q)
end



answers=[
{:Question_id => 1, :answers => 'Library'},
{:Question_id => 1, :answers => 'Home'},
{:Question_id => 1, :answers => 'John Deere Plaza'},
{:Question_id => 1, :answers => 'Other'},
{:Question_id => 2, :answers => 'Yes'},
{:Question_id => 2, :answers => 'No'},
{:Question_id => 3, :answers => '5'},
{:Question_id => 3, :answers => '6'},
{:Question_id => 3, :answers => '7'},
{:Question_id => 3, :answers => '8'},
{:Question_id => 3, :answers => 'Other'},
{:Question_id => 4, :answers => 'Rose'},
{:Question_id => 4, :answers => 'Lotus'},
{:Question_id => 4, :answers => 'Other'},
{:Question_id => 5, :answers => 'Computer Science'},
{:Question_id => 5, :answers => 'Engineering'},
{:Question_id => 5, :answers => 'Other'},
{:Question_id => 6, :answers => 'Tennis'},
{:Question_id => 6, :answers => 'Baseball'},
{:Question_id => 6, :answers => 'Other'},
{:Question_id => 7, :answers => '5'},
{:Question_id => 7, :answers => '6'},
{:Question_id => 7, :answers => '7'},
{:Question_id => 7, :answers => '8'},
{:Question_id => 7, :answers => 'Other'},
{:Question_id => 8, :answers => 'Yes'},
{:Question_id => 8, :answers => 'No'}
]

answers.each do |a|
  Answer.create!(a)
end

userpollresults=[
{:Question_id => 1, :Answer_id => 1, :totalpoll => 0},
{:Question_id => 1, :Answer_id => 2, :totalpoll => 0},
{:Question_id => 1, :Answer_id => 3, :totalpoll => 0},
{:Question_id => 1, :Answer_id => 4, :totalpoll => 0},
{:Question_id => 2, :Answer_id => 5, :totalpoll => 0},
{:Question_id => 2, :Answer_id => 6, :totalpoll => 0},
{:Question_id => 3, :Answer_id => 7, :totalpoll => 0},
{:Question_id => 3, :Answer_id => 8, :totalpoll => 0},
{:Question_id => 3, :Answer_id => 9, :totalpoll => 0},
{:Question_id => 3, :Answer_id => 10, :totalpoll => 0},
{:Question_id => 3, :Answer_id => 11, :totalpoll => 0},
{:Question_id => 4, :Answer_id => 12, :totalpoll => 0},
{:Question_id => 4, :Answer_id => 13, :totalpoll => 0},
{:Question_id => 4, :Answer_id => 14, :totalpoll => 0},
{:Question_id => 5, :Answer_id => 15, :totalpoll => 0},
{:Question_id => 5, :Answer_id => 16, :totalpoll => 0},
{:Question_id => 5, :Answer_id => 17, :totalpoll => 0},
{:Question_id => 6, :Answer_id => 18, :totalpoll => 0},
{:Question_id => 6, :Answer_id => 19, :totalpoll => 0},
{:Question_id => 6, :Answer_id => 20, :totalpoll => 0},
{:Question_id => 7, :Answer_id => 21, :totalpoll => 0},
{:Question_id => 7, :Answer_id => 22, :totalpoll => 0},
{:Question_id => 7, :Answer_id => 23, :totalpoll => 0},
{:Question_id => 7, :Answer_id => 24, :totalpoll => 0},
{:Question_id => 7, :Answer_id => 25, :totalpoll => 0},
{:Question_id => 8, :Answer_id => 26, :totalpoll => 0},
{:Question_id => 8, :Answer_id => 27, :totalpoll => 0}
]

userpollresults.each do |u|
  Userpollresult.create!(u)
end

pquestions=[
{:question => 'Who is better at communication?'},
{:question => 'Who provides extra help outside class better?'},
{:question => 'Who is friendlier?'},
{:question => 'Who gives extra credit?'},
{:question => 'Whose lectures are more interesting?'},
{:question => 'Who would be a better adviser in general?'}
]

pquestions.each do |q|
  PQuestion.create!(q)
end

cquestions=[
{:question => 'Which course has more homework?'},
{:question => 'Which course offer online?'},
{:question => 'Which course requires a personal laptop?'},
{:question => 'Which course has more workload then its actual credit hour?'},
{:question => 'Which course offer in all semester?'},
{:question => 'Which course has more than 2 exams, including final?'}
]

cquestions.each do |q|
  CQuestion.create!(q)
end

