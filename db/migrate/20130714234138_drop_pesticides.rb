class DropPesticides < ActiveRecord::Migration
  def up
  	drop_table :pesticides
  end

  def down
  end
end
