class Cvote < ActiveRecord::Base
  belongs_to :Cquestion
  belongs_to :Course
  # Setup accessible (or protected) attributes for your model
  attr_accessible :course_id, :cquestion_id, :wins, :appearances,:winpercentage
end

