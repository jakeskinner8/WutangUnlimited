class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.time :dob
      t.string :email
      t.string :major

      t.timestamps
    end
  end
end
