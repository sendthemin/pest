class CreatePesticides < ActiveRecord::Migration
  def change
    create_table :pesticides do |t|
      t.string :pesticide_name

      t.timestamps
    end
  end
end
