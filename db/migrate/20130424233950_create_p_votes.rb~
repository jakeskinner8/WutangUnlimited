class CreatePVotes < ActiveRecord::Migration
  def change
    create_table :p_votes do |t|
      t.references 'Professor'
      t.references 'PQuestion'
      t.integer :wins
      t.integer :appearances

      t.timestamps
    end
  end
end
