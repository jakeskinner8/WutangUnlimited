class CreatePvotes < ActiveRecord::Migration
  def change
    create_table :pvotes do |t|
      t.references 'Professor'
      t.references 'Pquestion'
      t.integer :wins 		, :default => 0
      t.integer :appearances	, :default => 0
      t.timestamps
    end
  end
end
