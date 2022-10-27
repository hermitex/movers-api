class RemoveItemIdFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_reference :kitchen_items, :item_id, index:true, foreign_key: true
    remove_reference :bed_room_items, :item_id, index:true, foreign_key: true
    remove_reference :living_room_items, :item_id, index:true, foreign_key: true
    remove_reference :dining_room_items, :item_id, index:true, foreign_key: true
  end
end
