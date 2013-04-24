class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |q|
      q.string :question
      q.integer :total
      q.timestamps
    end
  end
end
