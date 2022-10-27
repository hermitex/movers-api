class AddInventoryChecklistIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :kitchen_items, :inventory_checklist, index:true, foreign_key: true
    add_reference :bed_room_items, :inventory_checklist, index:true, foreign_key: true
    add_reference :living_room_items, :inventory_checklist, index:true, foreign_key: true
    add_reference :dining_room_items, :inventory_checklist, index:true, foreign_key: true
  end
end
