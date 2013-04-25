class Professor < ActiveRecord::Base
  has_many :Teach
  has_many :Course, :through => :Teach

  has_many :Pvote
  has_many :Pquestion, :through => :Pvote
end
