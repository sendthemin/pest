class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.references :appointment
      t.references :area
      t.text :notes
      t.references :combo

      t.timestamps
    end
    add_index :stops, :appointment_id
    add_index :stops, :area_id
    add_index :stops, :combo_id
  end
end
