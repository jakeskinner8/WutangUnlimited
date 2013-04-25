class CreateCquestions < ActiveRecord::Migration
  def change
    create_table :cquestions do |t|
      t.text :question
      t.timestamps
    end
  end
end
