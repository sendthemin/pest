class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :address
      t.string :org_phone
      t.string :url

      t.timestamps
    end
  end
end
