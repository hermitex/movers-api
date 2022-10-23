class AddItemIdToBedroomItem < ActiveRecord::Migration[7.0]
  def change
    add_column :bed_room_items, :item_id, :bigint
  end
end
