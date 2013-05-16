class CreatePests < ActiveRecord::Migration
  def change
    create_table :pests do |t|
      t.string :pest_name

      t.timestamps
    end
  end
end
