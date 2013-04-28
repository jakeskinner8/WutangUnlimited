class AlterTablePvoteFieldName < ActiveRecord::Migration
  def up
    rename_column :pvotes, :Professor_id, :professor_id	
    rename_column :pvotes, :Pquestion_id, :pquestion_id
  end

  def down
    rename_column :pvotes, :professor_id, :Professor_id
    rename_column :pvotes, :pquestion_id, :Pquestion_id
  end
end
