class Course < ActiveRecord::Base
  has_many :Teach
  has_many :Professor, :through => :Teach

  has_many :Cvote
  has_many :Cquestion, :through => :Cvote
end
