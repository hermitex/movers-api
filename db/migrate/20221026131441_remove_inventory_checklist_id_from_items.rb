class RemoveInventoryChecklistIdFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_reference :items, :inventory_checklist, index:true, foreign_key: true
  end
end
