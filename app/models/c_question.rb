class CQuestion < ActiveRecord::Base
  has_many :CVote
  has_many :Course, :through => :CVote
end
