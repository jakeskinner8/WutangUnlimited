class CreateCVotes < ActiveRecord::Migration
  def change
    create_table :c_votes do |t|
      t.references 'Course'
      t.references 'CQuestion'
      t.integer :wins
      t.integer :appearances
      t.timestamps
    end
  end
end
