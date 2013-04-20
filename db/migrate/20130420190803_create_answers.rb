class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |a|
      a.references 'Question'
      a.string :answers
      a.timestamps
    end
  end
end
