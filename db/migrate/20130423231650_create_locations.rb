class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :location_address
      t.string :location_contact
      t.string :location_phone
      t.string :location_email
      t.references :client

      t.timestamps
    end
    add_index :locations, :client_id
  end
end
