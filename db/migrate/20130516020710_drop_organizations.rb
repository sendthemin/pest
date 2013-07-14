class DropOrganizations < ActiveRecord::Migration
  def up
  	drop_table :organizations
  end

  def down
  end
end
