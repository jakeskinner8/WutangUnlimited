class Professor < ActiveRecord::Base
 has_many :Teach

  def self.getRandomProfessor
    self.find(:all,:order=>'RANDOM()', :limit => 2)
  end
end
