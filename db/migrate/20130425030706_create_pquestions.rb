class CreatePquestions < ActiveRecord::Migration
  def change
    create_table :pquestions do |t|
      t.text :question
      t.timestamps
    end
  end
end
