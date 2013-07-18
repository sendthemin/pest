class AddDilutionRateUrlToPesticide < ActiveRecord::Migration
  def change
    add_column :pesticides, :dilution_rate, :float
  end
end
