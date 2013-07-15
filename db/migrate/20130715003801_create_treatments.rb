class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.references :worksheet
      t.references :pest
      t.references :pesticide
      t.integer :amount
      t.string :unit
      t.string :method
      t.references :equipment

      t.timestamps
    end
    add_index :treatments, :worksheet_id
    add_index :treatments, :pest_id
    add_index :treatments, :pesticide_id
    add_index :treatments, :equipment_id
  end
end
