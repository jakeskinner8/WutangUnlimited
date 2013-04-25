class Cquestion < ActiveRecord::Base
  has_many :Cvote
  has_many :Course, :through => :Cvote
end
