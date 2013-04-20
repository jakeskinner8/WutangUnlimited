class Winper < ActiveRecord::Migration
 def up
	add_column :professors, :winpercentage, :float
  end

  def down
	remove_column :professors, :winpercentage
  end
end
