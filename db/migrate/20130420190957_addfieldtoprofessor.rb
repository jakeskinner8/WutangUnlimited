class Addfieldtoprofessor < ActiveRecord::Migration
  def up
	add_column :professors, :wins, :integer
	add_column :professors, :appearances, :integer
  end

  def down
	remove_column :professors, :wins
	remove_column :professors, :appearances
  end
end
