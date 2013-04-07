class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |ct|
      ct.integer :category_id
      ct.string :category_type

      ct.timestamps
    end
  end
end
