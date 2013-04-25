class Pquestion < ActiveRecord::Base
  has_many :Pvote
  has_many :Professor, :through => :Pvote
end
