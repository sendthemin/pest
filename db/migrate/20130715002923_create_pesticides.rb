class CreatePesticides < ActiveRecord::Migration
  def change
    create_table :pesticides do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :active_ingredient
      t.string :formulation
      t.string :epa_registration
      t.string :signal
      t.boolean :restricted_use
      t.string :label_url
      t.float :dilution_rate

      t.timestamps
    end
  end
end
