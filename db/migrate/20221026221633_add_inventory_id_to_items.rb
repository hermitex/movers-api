class AddInventoryIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :inventory_checklist
  end
end
