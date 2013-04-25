class Professor < ActiveRecord::Base
  has_many :Teach
  has_many :Course, :through => :Teach

  has_many :PVote
  has_many :PQuestion, :through => :PVote
end
