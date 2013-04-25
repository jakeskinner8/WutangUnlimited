class CreatePQuestions < ActiveRecord::Migration
  def change
    create_table :p_questions do |t|
      t.text :question
      t.timestamps
    end
  end
end
