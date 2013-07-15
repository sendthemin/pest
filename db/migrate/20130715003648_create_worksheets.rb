class CreateWorksheets < ActiveRecord::Migration
  def change
    create_table :worksheets do |t|
      t.references :area
      t.text :pest_comment
      t.text :sanitation_comment
      t.text :pestcontrol_comment

      t.timestamps
    end
    add_index :worksheets, :area_id
  end
end
