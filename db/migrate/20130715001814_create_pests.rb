class CreatePests < ActiveRecord::Migration
  def change
    create_table :pests do |t|
      t.string :common_name
      t.string :scientific_name
      t.boolean :invertebrate
      t.string :family

      t.timestamps
    end
  end
end
