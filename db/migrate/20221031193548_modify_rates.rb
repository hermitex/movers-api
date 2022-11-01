class ModifyRates < ActiveRecord::Migration[7.0]
  def change
    rename_column :rates, :item, :item_name
    add_column :rates, :category, :string
    add_column :rates, :count, :integer
  end
end
