class DropPests < ActiveRecord::Migration
  def up
  	drop_table :pests
  end

  def down
  end
end
