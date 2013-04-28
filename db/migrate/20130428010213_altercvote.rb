class Altercvote < ActiveRecord::Migration
  def up
    rename_column :cvotes, :Course_id, :course_id	
    rename_column :cvotes, :Cquestion_id, :cquestion_id
  end

  def down
    rename_column :cvotes, :course_id, :Course_id
    rename_column :cvotes, :cquestion_id, :Cquestion_id
  end
end
