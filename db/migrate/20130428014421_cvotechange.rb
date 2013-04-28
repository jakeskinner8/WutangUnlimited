class Cvotechange < ActiveRecord::Migration
 def up
	add_column :cvotes, :winpercentage, :float
        add_column :pvotes, :winpercentage, :float
  end

  def down
	remove_column :cvotes, :winpercentage
        add_column :pvotes, :winpercentage, :float
  end
end
