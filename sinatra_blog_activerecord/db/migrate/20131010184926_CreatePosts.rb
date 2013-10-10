class Createposts < ActiveRecord::Migration
  # this runs when you run the migration
  def up
  	create_table :posts do |t|
  		t.string :title
  		t.text :body
  		t.timestamps
  	end
  end
  # this runs when you undo(rollback) the migration
  def down
  	drop_table :posts
  end
end
