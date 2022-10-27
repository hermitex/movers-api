class RemoveCountToItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :kitchen_items, :count, :integer
    remove_column :bed_room_items, :count, :integer
    remove_column :living_room_items, :count, :integer
    remove_column :dining_room_items, :count, :integer
  end
end
