class Course < ActiveRecord::Base
  has_many :Teach
  has_many :Professor, :through => :Teach
end
