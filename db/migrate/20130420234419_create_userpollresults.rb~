class CreateUserpollresults < ActiveRecord::Migration
 def change
   create_table :userpollresults do |u|
     u.references 'Question'
     u.references 'Answer'

     u.timestamps
   end
 end
end
