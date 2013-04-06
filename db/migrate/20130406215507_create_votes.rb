class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |v|
      v.integer :vid
      v.integer :course_id
      v.integer :professor_id
      v.integer :appearance
      v.integer :won

      v.timestamps
    end
  end
end
