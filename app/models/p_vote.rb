class PVote < ActiveRecord::Base
  belongs_to :PQuestion
  belongs_to :Professor
end
