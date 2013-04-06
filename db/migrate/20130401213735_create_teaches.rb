class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|
	  t.references 'Course'
	  t.references 'Professor'
	  t.string :semester
      t.timestamps
    end
  end
end
