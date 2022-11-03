class RemoverColsFromInventory < ActiveRecord::Migration[7.0]
  def change
    remove_column :inventory_checklists, :number_of_boxes
    remove_column :inventory_checklists, :others
    rename_column :inventory_checklists, :name, :item_name
  end
end
