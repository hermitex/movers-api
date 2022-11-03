class RenameCountOfInventoryChecklists < ActiveRecord::Migration[7.0]
  def change
    rename_column :inventory_checklists, :count, :item_count
  end
end
