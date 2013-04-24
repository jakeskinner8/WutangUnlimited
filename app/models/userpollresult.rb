class Userpollresult < ActiveRecord::Base
  has_many :Question
  has_many :Answer
end
