class PQuestion < ActiveRecord::Base
  has_many :PVote
  has_many :Professor, :through => :PVote
end