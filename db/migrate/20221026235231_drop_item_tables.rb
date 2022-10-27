class DropItemTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :kitchen_items
    drop_table :bed_room_items
    drop_table :dining_room_items
    drop_table :living_room_items
  end
end
