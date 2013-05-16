class AddAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :area_name
      t.references :location

      t.timestamps
    end
    add_index :areas, :location_id
  end
end