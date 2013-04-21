class CreateUserpollresults < ActiveRecord::Migration
 def change
   create_table :userpollresults do |u|
     u.references 'Question'
     u.references 'Answer'
     u.string :answers
     u.timestamps
   end
 end
end
