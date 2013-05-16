class DropArea < ActiveRecord::Migration
  def up
  	  	drop_table :areas
  end

  def down
  end
end
