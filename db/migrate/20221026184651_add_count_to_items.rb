class AddCountToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :kitchen_items, :count, :integer
    add_column :bed_room_items, :count, :integer
    add_column :living_room_items, :count, :integer
    add_column :dining_room_items, :count, :integer
  end
end
