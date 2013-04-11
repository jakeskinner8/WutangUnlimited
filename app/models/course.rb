class Course < ActiveRecord::Base
  has_many :Teach
  has_many :Professor, :through => :Teach

 def self.getRandomCourse(x)
 	find(:all,:order=>'RANDOM()', :limit => x)
 end
end
