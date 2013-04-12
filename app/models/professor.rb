class Professor < ActiveRecord::Base
  has_many :Teach
  has_many :Course, :through => :Teach
end
