class Course < ActiveRecord::Base
  has_many :Teach
  has_many :Professor, :through => :Teach

  has_many :CVote
  has_many :CQuestion, :through => :CVote
end
