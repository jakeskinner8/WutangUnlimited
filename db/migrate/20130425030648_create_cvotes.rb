class CreateCvotes < ActiveRecord::Migration
  def change
    create_table :cvotes do |t|
      t.references 'Course'
      t.references 'Cquestion'
      t.integer :wins 		, :default => 0
      t.integer :appearances	, :default => 0
      t.timestamps
    end
  end
end
