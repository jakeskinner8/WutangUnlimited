class CreateVotings < ActiveRecord::Migration
  def change
    create_table :votings do |mv|
      mv.integer :member_id
      mv.integer :vid

      mv.timestamps
    end
  end
end
