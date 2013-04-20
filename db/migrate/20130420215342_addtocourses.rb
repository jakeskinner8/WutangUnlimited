class Addtocourses < ActiveRecord::Migration
  def up
	add_column :courses, :wins, :integer
	add_column :courses, :appearances, :integer
	add_column :courses, :winpercentage, :float
  end

  def down
	remove_column :courses, :wins
	remove_column :courses, :appearances
	remove_column :courses, :winpercentage
  end
end
