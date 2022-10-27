class RemoveNameFromInventoryChecklist < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :name
  end
end
