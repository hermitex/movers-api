class AddItemIdToDiningRoomItem < ActiveRecord::Migration[7.0]
  def change
    add_column :dining_room_items, :item_id, :bigint
  end
end
