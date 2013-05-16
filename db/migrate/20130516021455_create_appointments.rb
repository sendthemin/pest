class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :location
      t.references :user
      t.date :date

      t.timestamps
    end
    add_index :appointments, :location_id
    add_index :appointments, :user_id
  end
end
