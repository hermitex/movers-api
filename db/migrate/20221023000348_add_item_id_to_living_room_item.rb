class AddItemIdToLivingRoomItem < ActiveRecord::Migration[7.0]
  def change
    add_column :living_room_items, :item_id, :bigint
  end
end
