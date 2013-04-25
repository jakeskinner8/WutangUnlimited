class CreateCvotes < ActiveRecord::Migration
  def change
    create_table :cvotes do |t|
      t.references 'Course'
      t.references 'Cquestion'
      t.integer :wins
      t.integer :appearances
      t.timestamps
    end
  end
end
