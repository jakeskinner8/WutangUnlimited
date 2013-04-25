class CVote < ActiveRecord::Base
  belongs_to :CQuestion
  belongs_to :Course
end
