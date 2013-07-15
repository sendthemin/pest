class AddLabelUrlToPesticide < ActiveRecord::Migration
  def change
    add_column :pesticides, :label_url, :string
  end
end
