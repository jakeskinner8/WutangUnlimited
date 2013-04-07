class Teach < ActiveRecord::Base
  belongs_to :Professor
  belongs_to :Course
end
