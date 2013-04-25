class Cvote < ActiveRecord::Base
  belongs_to :Cquestion
  belongs_to :Course
  # Setup accessible (or protected) attributes for your model
  attr_accessible :Course_id, :Cquestion_id, :wins, :appearances
end

