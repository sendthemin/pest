class CreateCombos < ActiveRecord::Migration
  def change
    create_table :combos do |t|
      t.references :pest
      t.references :pesticide
      t.references :application

      t.timestamps
    end
    add_index :combos, :pest_id
    add_index :combos, :pesticide_id
    add_index :combos, :application_id
  end
end
