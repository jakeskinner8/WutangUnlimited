class CreatePvotes < ActiveRecord::Migration
  def change
    create_table :pvotes do |t|
      t.references 'professor'
      t.references 'pquestion'
      t.integer :wins 		, :default => 0
      t.integer :appearances	, :default => 0
      t.timestamps
    end
  end
end
