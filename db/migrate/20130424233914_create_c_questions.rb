class CreateCQuestions < ActiveRecord::Migration
  def change
    create_table :c_questions do |t|
      t.text :question
      t.timestamps
    end
  end
end
